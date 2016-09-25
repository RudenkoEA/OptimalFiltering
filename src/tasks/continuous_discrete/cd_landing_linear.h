#ifndef CONTINUOUS_DISCRETE_LANDING_LINEAR_H
#define CONTINUOUS_DISCRETE_LANDING_LINEAR_H

#include "src/core/continuous_discrete_task.h"
#include "src/math/math.h"


namespace Tasks
{

namespace ContinuousDiscrete
{


class LandingLinear : public Core::ContinuousDiscreteTask
{

public:
    LandingLinear();


protected:
    Vector funcA(const Vector &x) const override;
    Matrix funcB(const Vector &x) const override;
    Vector funcTau(const Vector &m, const Matrix &D) const override;
    Matrix funcTheta(const Vector &m, const Matrix &D) const override;
    Matrix funcAA(const Vector &m, const Matrix &D) const override;

    Vector funcC(const Vector &x) const override;
    Vector funcH(const Vector &m, const Matrix &D) const override;
    Matrix funcG(const Vector &m, const Matrix &D) const override;
    Matrix funcF(const Vector &m, const Matrix &D) const override;

    void loadParams() override;

    double k(double t) const;


protected:
    double TT;

    static constexpr double KB = 0.3;
    static constexpr double BB = 0.09;
    static constexpr double CC = 0.043333333333333333333333333333333333333333333333333;
    static constexpr double GG = 3.711E-3;
    static constexpr double RR = 3390.0;
};


} // end Tasks::Continuous

} // end Tasks


#endif // CONTINUOUS_DISCRETE_LANDING_LINEAR_H
