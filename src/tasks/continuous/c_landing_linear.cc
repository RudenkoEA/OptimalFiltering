#include "c_landing_linear.h"
#include "src/math/convert.h"


namespace Tasks
{

namespace Continuous
{

using Math::Convert::DegToRad;


LandingLinear::LandingLinear()
    : ContinuousTask()
    , TT(45.0)
{
    m_info->setName("Спуск ЛА на планету");
    m_info->setType("Л-");

    m_dimY = 2;

    mx     = Vector(3);
    mx[0]  = 6.0;
    mx[1]  = DegToRad(-18.0);
    mx[2]  = 100.0;
    m_dimX = mx.size();

    mv     = Vector::Zero(3);
    m_dimV = mv.size();

    mw     = Vector::Zero(4);
    m_dimW = mw.size();

    Dx = Matrix::Zero(m_dimX, m_dimX);
    Dx(0, 0) = pow(15E-3, 2);
    Dx(1, 1) = pow(DegToRad(1.0), 2);
    Dx(2, 2) = pow(7.0, 2);

    Dv = Matrix::Zero(m_dimV, m_dimV);

    Dw = Matrix::Zero(m_dimW, m_dimW);
    Dw(0, 0) = pow(1E-2, 2);
    Dw(1, 1) = pow(1E-2, 2);
    Dw(2, 2) = pow(2E-7, 2);
    Dw(3, 3) = pow(2E-7, 2);

    (*m_consts)["Kb"]   = KB;
    (*m_consts)["Beta"] = BB;
    (*m_consts)["c"]    = CC;
    (*m_consts)["g"]    = GG;
    (*m_consts)["R"]    = RR;

    (*m_params)["tau"] = TT;
}

void LandingLinear::loadParams()
{
    TT = m_params->at("tau");
}

double LandingLinear::k(double t) const
{
    return KB * Math::sign(t - TT);
}

Vector LandingLinear::funcA(const Vector &x) const
{
    double e = exp(-BB * x[2]);
    Vector a(m_dimX);
    a[0] = -CC * x[0] * x[0] * e - GG * sin(x[1]);
    a[1] = CC * k(m_time) * x[0] * e + cos(x[1]) * (x[0] / (RR + x[2]) - GG / x[0]);
    a[2] = x[0] * sin(x[1]);

    return a;
}

Matrix LandingLinear::funcB(const Vector & /*x*/) const
{
    return Matrix::Zero(m_dimX, m_dimV);
}


Vector LandingLinear::funcC(const Vector &x) const
{
    double e = exp(-BB * x[2]);
    Vector c(m_dimY);
    c[0] = CC * x[0] * x[0] * e * (cos(x[1]) - k(m_time) * sin(x[1]));
    c[1] = CC * x[0] * x[0] * e * (sin(x[1]) - k(m_time) * cos(x[1]));

    return c;
}

Matrix LandingLinear::funcD(const Vector &x) const
{
    Matrix d = Matrix::Zero(m_dimY, m_dimW);
    Vector c = funcC(x);
    d(0, 0) = c[0];
    d(0, 2) = 1.0;
    d(1, 1) = c[1];
    d(1, 3) = 1.0;

    return d;
}

Matrix LandingLinear::funcQ(const Vector &x, const Matrix & /*D*/) const
{
    Matrix b = funcB(x);
    return b * b.transpose();
}

Matrix LandingLinear::funcS(const Vector & /*x*/, const Matrix & /*D*/) const
{
    return Matrix::Zero(m_dimX, m_dimY);
}

Matrix LandingLinear::funcR(const Vector &x, const Matrix & /*D*/) const
{
    Matrix d = funcD(x);
    return d * d.transpose();
}

Matrix LandingLinear::funcAA(const Vector &m, const Matrix & /*D*/) const
{
    double e = exp(-BB * m[2]);
    Matrix a(m_dimX, m_dimX);

    a(0, 0) = -2.0 * CC * m[0] * e;
    a(0, 1) = -GG * cos(m[1]);
    a(0, 2) = BB * CC * m[0] * m[0] * e;

    a(1, 0) = CC * k(m_time) * e + (GG / (m[0] * m[0]) + 1.0 / (RR + m[2])) * cos(m[1]);
    a(1, 1) = (GG / m[0] - m[0] / (RR + m[2])) * sin(m[1]);
    a(1, 2) = -CC * BB * k(m_time) * m[0] * e - m[0] * cos(m[1]) / ((RR + m[2]) * (RR + m[2]));

    a(2, 0) = sin(m[1]);
    a(2, 1) = m[0] * cos(m[1]);
    a(2, 2) = 0.0;

    return a;
}

Matrix LandingLinear::funcG(const Vector &m, const Matrix & /*D*/) const
{
    double e = exp(-BB * m[2]);
    Matrix g(m_dimY, m_dimX);

    g(0, 0) = 2 * CC * m[0] * e * (cos(m[1]) - k(m_time) * sin(m[1]));
    g(0, 1) = -CC * m[0] * m[0] * e * sin(m[1]);
    g(0, 2) = -BB * CC * m[0] * m[0] * e * (cos(m[1]) - k(m_time) * sin(m[1]));

    g(1, 0) = 2 * CC * m[0] * e * (sin(m[1]) - k(m_time) * cos(m[1]));
    g(1, 1) = CC * m[0] * m[0] * e * cos(m[1]);
    g(1, 2) = -BB * CC * m[0] * m[0] * e * (sin(m[1]) - k(m_time) * cos(m[1]));

    return g;
}


} // end Tasks::Continuous

} // end Tasks
