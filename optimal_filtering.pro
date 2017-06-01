QT             += core gui printsupport
CONFIG         += c++11
QMAKE_CXXFLAGS += -std=c++11

#LIBS += -L/usr/local/lib

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = OptimalFiltering
TEMPLATE = app

RESOURCES += \
    resources.qrc

HEADERS += \
    src/core/continuous_discrete_filter.h \
    src/core/continuous_discrete_task.h \
    src/core/continuous_filter.h \
    src/core/continuous_task.h \
    src/core/discrete_filter.h \
    src/core/discrete_task.h \
    src/core/filter.h \
    src/core/filter_output.h \
    src/core/filter_parameters.h \
    src/core/function_time.h \
    src/core/info.h \
    src/core/task.h \
    src/core/types_info.h \
    src/filters/continuous/c_aof.h \
    src/filters/continuous/c_fos.h \
    src/filters/continuous_discrete/cd_aof.h \
    src/filters/continuous_discrete/cd_dfos.h \
    src/filters/continuous_discrete/cd_dfosbo.h \
    src/filters/continuous_discrete/cd_fos.h \
    src/filters/discrete/d_aof.h \
    src/filters/discrete/d_fos.h \
    src/filters/discrete/d_mfos.h \
    src/filters/filters_factory.h \
    src/gui/additional_settings_widget.h \
    src/gui/color_manager.h \
    src/gui/filter_parameters_widget.h \
    src/gui/filter_results_table.h \
    src/gui/filter_start_buttons_box.h \
    src/gui/font_manager.h \
    src/gui/graph_sheet.h \
    src/gui/graph_window.h \
    src/gui/gui_config.h \
    src/gui/main_window.h \
    src/gui/matrix_widget.h \
    src/gui/ranges_dialog.h \
    src/gui/task_parameters_widget.h \
    src/gui/task_widget.h \
    src/math/constants.h \
    src/math/convert.h \
    src/math/linear_algebra.h \
    src/math/math.h \
    src/math/matrix.h \
    src/math/random.h \
    src/math/statistic.h \
    src/tasks/continuous/c_landing_gauss.h \
    src/tasks/continuous/c_landing_linear.h \
    src/tasks/continuous/c_vanderpol_gauss.h \
    src/tasks/continuous/c_vanderpol_linear.h \
    src/tasks/continuous_discrete/cd_landing_gauss.h \
    src/tasks/continuous_discrete/cd_landing_linear.h \
    src/tasks/continuous_discrete/cd_vanderpol_gauss.h \
    src/tasks/continuous_discrete/cd_vanderpol_linear.h \
    src/tasks/discrete/d_landing_gauss.h \
    src/tasks/discrete/d_landing_linear.h \
    src/tasks/tasks_factory.h \
    src/array.h \
    src/config.h \
    third_party/eigen/src/Cholesky/LDLT.h \
    third_party/eigen/src/Cholesky/LLT.h \
    third_party/eigen/src/Cholesky/LLT_LAPACKE.h \
    third_party/eigen/src/Core/arch/AltiVec/Complex.h \
    third_party/eigen/src/Core/arch/AltiVec/MathFunctions.h \
    third_party/eigen/src/Core/arch/AltiVec/PacketMath.h \
    third_party/eigen/src/Core/arch/AVX/Complex.h \
    third_party/eigen/src/Core/arch/AVX/MathFunctions.h \
    third_party/eigen/src/Core/arch/AVX/PacketMath.h \
    third_party/eigen/src/Core/arch/AVX/TypeCasting.h \
    third_party/eigen/src/Core/arch/AVX512/MathFunctions.h \
    third_party/eigen/src/Core/arch/AVX512/PacketMath.h \
    third_party/eigen/src/Core/arch/CUDA/Complex.h \
    third_party/eigen/src/Core/arch/CUDA/Half.h \
    third_party/eigen/src/Core/arch/CUDA/MathFunctions.h \
    third_party/eigen/src/Core/arch/CUDA/PacketMath.h \
    third_party/eigen/src/Core/arch/CUDA/PacketMathHalf.h \
    third_party/eigen/src/Core/arch/CUDA/TypeCasting.h \
    third_party/eigen/src/Core/arch/Default/Settings.h \
    third_party/eigen/src/Core/arch/NEON/Complex.h \
    third_party/eigen/src/Core/arch/NEON/MathFunctions.h \
    third_party/eigen/src/Core/arch/NEON/PacketMath.h \
    third_party/eigen/src/Core/arch/SSE/Complex.h \
    third_party/eigen/src/Core/arch/SSE/MathFunctions.h \
    third_party/eigen/src/Core/arch/SSE/PacketMath.h \
    third_party/eigen/src/Core/arch/SSE/TypeCasting.h \
    third_party/eigen/src/Core/arch/ZVector/Complex.h \
    third_party/eigen/src/Core/arch/ZVector/MathFunctions.h \
    third_party/eigen/src/Core/arch/ZVector/PacketMath.h \
    third_party/eigen/src/Core/functors/AssignmentFunctors.h \
    third_party/eigen/src/Core/functors/BinaryFunctors.h \
    third_party/eigen/src/Core/functors/NullaryFunctors.h \
    third_party/eigen/src/Core/functors/StlFunctors.h \
    third_party/eigen/src/Core/functors/TernaryFunctors.h \
    third_party/eigen/src/Core/functors/UnaryFunctors.h \
    third_party/eigen/src/Core/products/GeneralBlockPanelKernel.h \
    third_party/eigen/src/Core/products/GeneralMatrixMatrix.h \
    third_party/eigen/src/Core/products/GeneralMatrixMatrix_BLAS.h \
    third_party/eigen/src/Core/products/GeneralMatrixMatrixTriangular.h \
    third_party/eigen/src/Core/products/GeneralMatrixMatrixTriangular_BLAS.h \
    third_party/eigen/src/Core/products/GeneralMatrixVector.h \
    third_party/eigen/src/Core/products/GeneralMatrixVector_BLAS.h \
    third_party/eigen/src/Core/products/Parallelizer.h \
    third_party/eigen/src/Core/products/SelfadjointMatrixMatrix.h \
    third_party/eigen/src/Core/products/SelfadjointMatrixMatrix_BLAS.h \
    third_party/eigen/src/Core/products/SelfadjointMatrixVector.h \
    third_party/eigen/src/Core/products/SelfadjointMatrixVector_BLAS.h \
    third_party/eigen/src/Core/products/SelfadjointProduct.h \
    third_party/eigen/src/Core/products/SelfadjointRank2Update.h \
    third_party/eigen/src/Core/products/TriangularMatrixMatrix.h \
    third_party/eigen/src/Core/products/TriangularMatrixMatrix_BLAS.h \
    third_party/eigen/src/Core/products/TriangularMatrixVector.h \
    third_party/eigen/src/Core/products/TriangularMatrixVector_BLAS.h \
    third_party/eigen/src/Core/products/TriangularSolverMatrix.h \
    third_party/eigen/src/Core/products/TriangularSolverMatrix_BLAS.h \
    third_party/eigen/src/Core/products/TriangularSolverVector.h \
    third_party/eigen/src/Core/util/BlasUtil.h \
    third_party/eigen/src/Core/util/Constants.h \
    third_party/eigen/src/Core/util/DisableStupidWarnings.h \
    third_party/eigen/src/Core/util/ForwardDeclarations.h \
    third_party/eigen/src/Core/util/Macros.h \
    third_party/eigen/src/Core/util/Memory.h \
    third_party/eigen/src/Core/util/Meta.h \
    third_party/eigen/src/Core/util/MKL_support.h \
    third_party/eigen/src/Core/util/NonMPL2.h \
    third_party/eigen/src/Core/util/ReenableStupidWarnings.h \
    third_party/eigen/src/Core/util/StaticAssert.h \
    third_party/eigen/src/Core/util/XprHelper.h \
    third_party/eigen/src/Core/Array.h \
    third_party/eigen/src/Core/ArrayBase.h \
    third_party/eigen/src/Core/ArrayWrapper.h \
    third_party/eigen/src/Core/Assign.h \
    third_party/eigen/src/Core/Assign_MKL.h \
    third_party/eigen/src/Core/AssignEvaluator.h \
    third_party/eigen/src/Core/BandMatrix.h \
    third_party/eigen/src/Core/Block.h \
    third_party/eigen/src/Core/BooleanRedux.h \
    third_party/eigen/src/Core/CommaInitializer.h \
    third_party/eigen/src/Core/ConditionEstimator.h \
    third_party/eigen/src/Core/CoreEvaluators.h \
    third_party/eigen/src/Core/CoreIterators.h \
    third_party/eigen/src/Core/CwiseBinaryOp.h \
    third_party/eigen/src/Core/CwiseNullaryOp.h \
    third_party/eigen/src/Core/CwiseTernaryOp.h \
    third_party/eigen/src/Core/CwiseUnaryOp.h \
    third_party/eigen/src/Core/CwiseUnaryView.h \
    third_party/eigen/src/Core/DenseBase.h \
    third_party/eigen/src/Core/DenseCoeffsBase.h \
    third_party/eigen/src/Core/DenseStorage.h \
    third_party/eigen/src/Core/Diagonal.h \
    third_party/eigen/src/Core/DiagonalMatrix.h \
    third_party/eigen/src/Core/DiagonalProduct.h \
    third_party/eigen/src/Core/Dot.h \
    third_party/eigen/src/Core/EigenBase.h \
    third_party/eigen/src/Core/ForceAlignedAccess.h \
    third_party/eigen/src/Core/Fuzzy.h \
    third_party/eigen/src/Core/GeneralProduct.h \
    third_party/eigen/src/Core/GenericPacketMath.h \
    third_party/eigen/src/Core/GlobalFunctions.h \
    third_party/eigen/src/Core/Inverse.h \
    third_party/eigen/src/Core/IO.h \
    third_party/eigen/src/Core/Map.h \
    third_party/eigen/src/Core/MapBase.h \
    third_party/eigen/src/Core/MathFunctions.h \
    third_party/eigen/src/Core/MathFunctionsImpl.h \
    third_party/eigen/src/Core/Matrix.h \
    third_party/eigen/src/Core/MatrixBase.h \
    third_party/eigen/src/Core/NestByValue.h \
    third_party/eigen/src/Core/NoAlias.h \
    third_party/eigen/src/Core/NumTraits.h \
    third_party/eigen/src/Core/PermutationMatrix.h \
    third_party/eigen/src/Core/PlainObjectBase.h \
    third_party/eigen/src/Core/Product.h \
    third_party/eigen/src/Core/ProductEvaluators.h \
    third_party/eigen/src/Core/Random.h \
    third_party/eigen/src/Core/Redux.h \
    third_party/eigen/src/Core/Ref.h \
    third_party/eigen/src/Core/Replicate.h \
    third_party/eigen/src/Core/ReturnByValue.h \
    third_party/eigen/src/Core/Reverse.h \
    third_party/eigen/src/Core/Select.h \
    third_party/eigen/src/Core/SelfAdjointView.h \
    third_party/eigen/src/Core/SelfCwiseBinaryOp.h \
    third_party/eigen/src/Core/Solve.h \
    third_party/eigen/src/Core/SolverBase.h \
    third_party/eigen/src/Core/SolveTriangular.h \
    third_party/eigen/src/Core/StableNorm.h \
    third_party/eigen/src/Core/Stride.h \
    third_party/eigen/src/Core/Swap.h \
    third_party/eigen/src/Core/Transpose.h \
    third_party/eigen/src/Core/Transpositions.h \
    third_party/eigen/src/Core/TriangularMatrix.h \
    third_party/eigen/src/Core/VectorBlock.h \
    third_party/eigen/src/Core/VectorwiseOp.h \
    third_party/eigen/src/Core/Visitor.h \
    third_party/eigen/src/Eigenvalues/ComplexEigenSolver.h \
    third_party/eigen/src/Eigenvalues/ComplexSchur.h \
    third_party/eigen/src/Eigenvalues/ComplexSchur_LAPACKE.h \
    third_party/eigen/src/Eigenvalues/EigenSolver.h \
    third_party/eigen/src/Eigenvalues/GeneralizedEigenSolver.h \
    third_party/eigen/src/Eigenvalues/GeneralizedSelfAdjointEigenSolver.h \
    third_party/eigen/src/Eigenvalues/HessenbergDecomposition.h \
    third_party/eigen/src/Eigenvalues/MatrixBaseEigenvalues.h \
    third_party/eigen/src/Eigenvalues/RealQZ.h \
    third_party/eigen/src/Eigenvalues/RealSchur.h \
    third_party/eigen/src/Eigenvalues/RealSchur_LAPACKE.h \
    third_party/eigen/src/Eigenvalues/SelfAdjointEigenSolver.h \
    third_party/eigen/src/Eigenvalues/SelfAdjointEigenSolver_LAPACKE.h \
    third_party/eigen/src/Eigenvalues/Tridiagonalization.h \
    third_party/eigen/src/Geometry/arch/Geometry_SSE.h \
    third_party/eigen/src/Geometry/AlignedBox.h \
    third_party/eigen/src/Geometry/AngleAxis.h \
    third_party/eigen/src/Geometry/EulerAngles.h \
    third_party/eigen/src/Geometry/Homogeneous.h \
    third_party/eigen/src/Geometry/Hyperplane.h \
    third_party/eigen/src/Geometry/OrthoMethods.h \
    third_party/eigen/src/Geometry/ParametrizedLine.h \
    third_party/eigen/src/Geometry/Quaternion.h \
    third_party/eigen/src/Geometry/Rotation2D.h \
    third_party/eigen/src/Geometry/RotationBase.h \
    third_party/eigen/src/Geometry/Scaling.h \
    third_party/eigen/src/Geometry/Transform.h \
    third_party/eigen/src/Geometry/Translation.h \
    third_party/eigen/src/Geometry/Umeyama.h \
    third_party/eigen/src/Householder/BlockHouseholder.h \
    third_party/eigen/src/Householder/Householder.h \
    third_party/eigen/src/Householder/HouseholderSequence.h \
    third_party/eigen/src/IterativeLinearSolvers/BasicPreconditioners.h \
    third_party/eigen/src/IterativeLinearSolvers/BiCGSTAB.h \
    third_party/eigen/src/IterativeLinearSolvers/ConjugateGradient.h \
    third_party/eigen/src/IterativeLinearSolvers/IncompleteCholesky.h \
    third_party/eigen/src/IterativeLinearSolvers/IncompleteLUT.h \
    third_party/eigen/src/IterativeLinearSolvers/IterativeSolverBase.h \
    third_party/eigen/src/IterativeLinearSolvers/LeastSquareConjugateGradient.h \
    third_party/eigen/src/IterativeLinearSolvers/SolveWithGuess.h \
    third_party/eigen/src/Jacobi/Jacobi.h \
    third_party/eigen/src/LU/arch/Inverse_SSE.h \
    third_party/eigen/src/LU/Determinant.h \
    third_party/eigen/src/LU/FullPivLU.h \
    third_party/eigen/src/LU/InverseImpl.h \
    third_party/eigen/src/LU/PartialPivLU.h \
    third_party/eigen/src/LU/PartialPivLU_LAPACKE.h \
    third_party/eigen/src/misc/blas.h \
    third_party/eigen/src/misc/Image.h \
    third_party/eigen/src/misc/Kernel.h \
    third_party/eigen/src/misc/lapack.h \
    third_party/eigen/src/misc/lapacke.h \
    third_party/eigen/src/misc/lapacke_mangling.h \
    third_party/eigen/src/misc/RealSvd2x2.h \
    third_party/eigen/src/OrderingMethods/Amd.h \
    third_party/eigen/src/OrderingMethods/Eigen_Colamd.h \
    third_party/eigen/src/OrderingMethods/Ordering.h \
    third_party/eigen/src/plugins/ArrayCwiseBinaryOps.h \
    third_party/eigen/src/plugins/ArrayCwiseUnaryOps.h \
    third_party/eigen/src/plugins/BlockMethods.h \
    third_party/eigen/src/plugins/CommonCwiseBinaryOps.h \
    third_party/eigen/src/plugins/CommonCwiseUnaryOps.h \
    third_party/eigen/src/plugins/MatrixCwiseBinaryOps.h \
    third_party/eigen/src/plugins/MatrixCwiseUnaryOps.h \
    third_party/eigen/src/QR/ColPivHouseholderQR.h \
    third_party/eigen/src/QR/ColPivHouseholderQR_LAPACKE.h \
    third_party/eigen/src/QR/CompleteOrthogonalDecomposition.h \
    third_party/eigen/src/QR/FullPivHouseholderQR.h \
    third_party/eigen/src/QR/HouseholderQR.h \
    third_party/eigen/src/QR/HouseholderQR_LAPACKE.h \
    third_party/eigen/src/StlSupport/details.h \
    third_party/eigen/src/StlSupport/StdDeque.h \
    third_party/eigen/src/StlSupport/StdList.h \
    third_party/eigen/src/StlSupport/StdVector.h \
    third_party/eigen/src/SVD/BDCSVD.h \
    third_party/eigen/src/SVD/JacobiSVD.h \
    third_party/eigen/src/SVD/JacobiSVD_LAPACKE.h \
    third_party/eigen/src/SVD/SVDBase.h \
    third_party/eigen/src/SVD/UpperBidiagonalization.h \
    third_party/eigen/Cholesky \
    third_party/eigen/Core \
    third_party/eigen/Dense \
    third_party/eigen/Eigen \
    third_party/eigen/Eigenvalues \
    third_party/eigen/Geometry \
    third_party/eigen/Householder \
    third_party/eigen/IterativeLinearSolvers \
    third_party/eigen/Jacobi \
    third_party/eigen/LU \
    third_party/eigen/OrderingMethods \
    third_party/eigen/QR \
    third_party/eigen/QtAlignedMalloc \
    third_party/eigen/StdDeque \
    third_party/eigen/StdList \
    third_party/eigen/StdVector \
    third_party/eigen/SVD \
    third_party/qcustomplot/qcustomplot.h \
    src/filters/discrete/d_duof.h \
    src/tasks/discrete/d_scalar_linear.h \
    src/core/logic_dynamic_filter.h \
    src/core/logic_dynamic_task.h \
    src/tasks/logic_dynamic/ld_landing_test_linear.h \
    src/filters/logic_dynamic/ld_aof.h \
    src/filters/logic_dynamic/ld_fos.h \
    src/tasks/logic_dynamic/ld_landing_rejection_linear.h \
    src/filters/logic_dynamic/ld_fkp.h

SOURCES += \
    src/core/continuous_discrete_filter.cc \
    src/core/continuous_discrete_task.cc \
    src/core/continuous_filter.cc \
    src/core/continuouse_task.cc \
    src/core/discrete_filter.cc \
    src/core/discrete_task.cc \
    src/core/filter.cc \
    src/core/filter_output.cc \
    src/core/filter_parameters.cc \
    src/core/function_time.cc \
    src/core/info.cc \
    src/core/task.cc \
    src/filters/continuous/c_aof.cc \
    src/filters/continuous/c_fos.cc \
    src/filters/continuous_discrete/cd_aof.cc \
    src/filters/continuous_discrete/cd_dfos.cc \
    src/filters/continuous_discrete/cd_dfosbo.cc \
    src/filters/continuous_discrete/cd_fos.cc \
    src/filters/discrete/d_aof.cc \
    src/filters/discrete/d_fos.cc \
    src/filters/discrete/d_mfos.cc \
    src/filters/filters_factory.cc \
    src/gui/additional_settings_widget.cc \
    src/gui/color_manager.cc \
    src/gui/filter_parameters_widget.cc \
    src/gui/filter_results_table.cc \
    src/gui/filter_start_buttons_box.cc \
    src/gui/font_manager.cc \
    src/gui/graph_sheet.cc \
    src/gui/graph_window.cc \
    src/gui/main_window.cc \
    src/gui/matrix_widget.cc \
    src/gui/ranges_dialog.cc \
    src/gui/task_parameters_widget.cc \
    src/gui/task_widget.cc \
    src/math/linear_algebra.cc \
    src/math/matrix.cc \
    src/math/random.cc \
    src/math/statistic.cc \
    src/tasks/continuous/c_landing_gauss.cc \
    src/tasks/continuous/c_landing_linear.cc \
    src/tasks/continuous/c_vanderpol_gauss.cc \
    src/tasks/continuous/c_vanderpol_linear.cc \
    src/tasks/continuous_discrete/cd_landing_gauss.cc \
    src/tasks/continuous_discrete/cd_landing_linear.cc \
    src/tasks/continuous_discrete/cd_vanderpol_gauss.cc \
    src/tasks/continuous_discrete/cd_vanderpol_linear.cc \
    src/tasks/discrete/d_landing_gauss.cc \
    src/tasks/discrete/d_landing_linear.cc \
    src/tasks/tasks_factory.cc \
    src/main.cc \
    third_party/qcustomplot/qcustomplot.cc \
    src/filters/discrete/d_duof.cc \
    src/tasks/discrete/d_scalar_linear.cc \
    src/core/logic_dynamic_filter.cc \
    src/core/logic_dynamic_task.cc \
    src/tasks/logic_dynamic/ld_landing_test_linear.cc \
    src/filters/logic_dynamic/ld_aof.cc \
    src/filters/logic_dynamic/ld_fos.cc \
    src/tasks/logic_dynamic/ld_landing_rejection_linear.cc \
    src/filters/logic_dynamic/ld_fkp.cc
