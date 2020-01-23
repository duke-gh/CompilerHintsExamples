; ModuleID = 'loop_unroll.cpp'
source_filename = "loop_unroll.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define double @_Z4calci(i32) local_unnamed_addr #0 {
  %2 = sitofp i32 %0 to double
  %3 = tail call double @sin(double %2) #2
  ret double %3
}

; Function Attrs: nounwind uwtable
define double @_Z7get_resi(i32) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %3, label %25

; <label>:3:                                      ; preds = %1
  %4 = add i32 %0, -1
  %5 = and i32 %0, 3
  %6 = icmp ult i32 %4, 3
  br i1 %6, label %9, label %7

; <label>:7:                                      ; preds = %3
  %8 = sub i32 %0, %5
  br label %27

; <label>:9:                                      ; preds = %27, %3
  %10 = phi double [ undef, %3 ], [ %45, %27 ]
  %11 = phi i32 [ 0, %3 ], [ %46, %27 ]
  %12 = phi double [ 0.000000e+00, %3 ], [ %45, %27 ]
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %25, label %14

; <label>:14:                                     ; preds = %9
  br label %15

; <label>:15:                                     ; preds = %15, %14
  %16 = phi i32 [ %22, %15 ], [ %11, %14 ]
  %17 = phi double [ %21, %15 ], [ %12, %14 ]
  %18 = phi i32 [ %23, %15 ], [ %5, %14 ]
  %19 = sitofp i32 %16 to double
  %20 = tail call double @sin(double %19) #2
  %21 = fadd double %17, %20
  %22 = add nuw nsw i32 %16, 1
  %23 = add i32 %18, -1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %15, !llvm.loop !2

; <label>:25:                                     ; preds = %9, %15, %1
  %26 = phi double [ 0.000000e+00, %1 ], [ %10, %9 ], [ %21, %15 ]
  ret double %26

; <label>:27:                                     ; preds = %27, %7
  %28 = phi i32 [ 0, %7 ], [ %46, %27 ]
  %29 = phi double [ 0.000000e+00, %7 ], [ %45, %27 ]
  %30 = phi i32 [ %8, %7 ], [ %47, %27 ]
  %31 = sitofp i32 %28 to double
  %32 = tail call double @sin(double %31) #2
  %33 = fadd double %29, %32
  %34 = or i32 %28, 1
  %35 = sitofp i32 %34 to double
  %36 = tail call double @sin(double %35) #2
  %37 = fadd double %33, %36
  %38 = or i32 %28, 2
  %39 = sitofp i32 %38 to double
  %40 = tail call double @sin(double %39) #2
  %41 = fadd double %37, %40
  %42 = or i32 %28, 3
  %43 = sitofp i32 %42 to double
  %44 = tail call double @sin(double %43) #2
  %45 = fadd double %41, %44
  %46 = add nuw nsw i32 %28, 4
  %47 = add i32 %30, -4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %9, label %27
}

; Function Attrs: nounwind uwtable
define double @_Z17get_res_no_unrolli(i32) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %3, label %4

; <label>:3:                                      ; preds = %1
  br label %6

; <label>:4:                                      ; preds = %6, %1
  %5 = phi double [ 0.000000e+00, %1 ], [ %11, %6 ]
  ret double %5

; <label>:6:                                      ; preds = %3, %6
  %7 = phi i32 [ %12, %6 ], [ 0, %3 ]
  %8 = phi double [ %11, %6 ], [ 0.000000e+00, %3 ]
  %9 = sitofp i32 %7 to double
  %10 = tail call double @sin(double %9) #2
  %11 = fadd double %8, %10
  %12 = add nuw nsw i32 %7, 1
  %13 = icmp eq i32 %12, %0
  br i1 %13, label %4, label %6, !llvm.loop !4
}

; Function Attrs: nounwind uwtable
define double @_Z14get_res_unrolli(i32) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %3, label %25

; <label>:3:                                      ; preds = %1
  %4 = add i32 %0, -1
  %5 = and i32 %0, 3
  %6 = icmp ult i32 %4, 3
  br i1 %6, label %9, label %7

; <label>:7:                                      ; preds = %3
  %8 = sub i32 %0, %5
  br label %27

; <label>:9:                                      ; preds = %27, %3
  %10 = phi double [ undef, %3 ], [ %45, %27 ]
  %11 = phi i32 [ 0, %3 ], [ %46, %27 ]
  %12 = phi double [ 0.000000e+00, %3 ], [ %45, %27 ]
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %25, label %14

; <label>:14:                                     ; preds = %9
  br label %15

; <label>:15:                                     ; preds = %14, %15
  %16 = phi i32 [ %22, %15 ], [ %11, %14 ]
  %17 = phi double [ %21, %15 ], [ %12, %14 ]
  %18 = phi i32 [ %23, %15 ], [ %5, %14 ]
  %19 = sitofp i32 %16 to double
  %20 = tail call double @sin(double %19) #2
  %21 = fadd double %17, %20
  %22 = add nuw nsw i32 %16, 1
  %23 = add i32 %18, -1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %15, !llvm.loop !5

; <label>:25:                                     ; preds = %15, %9, %1
  %26 = phi double [ 0.000000e+00, %1 ], [ %10, %9 ], [ %21, %15 ]
  ret double %26

; <label>:27:                                     ; preds = %27, %7
  %28 = phi i32 [ 0, %7 ], [ %46, %27 ]
  %29 = phi double [ 0.000000e+00, %7 ], [ %45, %27 ]
  %30 = phi i32 [ %8, %7 ], [ %47, %27 ]
  %31 = sitofp i32 %28 to double
  %32 = tail call double @sin(double %31) #2
  %33 = fadd double %29, %32
  %34 = or i32 %28, 1
  %35 = sitofp i32 %34 to double
  %36 = tail call double @sin(double %35) #2
  %37 = fadd double %33, %36
  %38 = or i32 %28, 2
  %39 = sitofp i32 %38 to double
  %40 = tail call double @sin(double %39) #2
  %41 = fadd double %37, %40
  %42 = or i32 %28, 3
  %43 = sitofp i32 %42 to double
  %44 = tail call double @sin(double %43) #2
  %45 = fadd double %41, %44
  %46 = add nuw nsw i32 %28, 4
  %47 = add i32 %30, -4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %9, label %27, !llvm.loop !6
}

; Function Attrs: nounwind uwtable
define double @_Z19get_res_unroll_fulli(i32) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %3, label %25

; <label>:3:                                      ; preds = %1
  %4 = add i32 %0, -1
  %5 = and i32 %0, 3
  %6 = icmp ult i32 %4, 3
  br i1 %6, label %9, label %7

; <label>:7:                                      ; preds = %3
  %8 = sub i32 %0, %5
  br label %27

; <label>:9:                                      ; preds = %27, %3
  %10 = phi double [ undef, %3 ], [ %45, %27 ]
  %11 = phi i32 [ 0, %3 ], [ %46, %27 ]
  %12 = phi double [ 0.000000e+00, %3 ], [ %45, %27 ]
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %25, label %14

; <label>:14:                                     ; preds = %9
  br label %15

; <label>:15:                                     ; preds = %15, %14
  %16 = phi i32 [ %22, %15 ], [ %11, %14 ]
  %17 = phi double [ %21, %15 ], [ %12, %14 ]
  %18 = phi i32 [ %23, %15 ], [ %5, %14 ]
  %19 = sitofp i32 %16 to double
  %20 = tail call double @sin(double %19) #2
  %21 = fadd double %17, %20
  %22 = add nuw nsw i32 %16, 1
  %23 = add i32 %18, -1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %15, !llvm.loop !7

; <label>:25:                                     ; preds = %9, %15, %1
  %26 = phi double [ 0.000000e+00, %1 ], [ %10, %9 ], [ %21, %15 ]
  ret double %26

; <label>:27:                                     ; preds = %27, %7
  %28 = phi i32 [ 0, %7 ], [ %46, %27 ]
  %29 = phi double [ 0.000000e+00, %7 ], [ %45, %27 ]
  %30 = phi i32 [ %8, %7 ], [ %47, %27 ]
  %31 = sitofp i32 %28 to double
  %32 = tail call double @sin(double %31) #2
  %33 = fadd double %29, %32
  %34 = or i32 %28, 1
  %35 = sitofp i32 %34 to double
  %36 = tail call double @sin(double %35) #2
  %37 = fadd double %33, %36
  %38 = or i32 %28, 2
  %39 = sitofp i32 %38 to double
  %40 = tail call double @sin(double %39) #2
  %41 = fadd double %37, %40
  %42 = or i32 %28, 3
  %43 = sitofp i32 %42 to double
  %44 = tail call double @sin(double %43) #2
  %45 = fadd double %41, %44
  %46 = add nuw nsw i32 %28, 4
  %47 = add i32 %30, -4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %9, label %27, !llvm.loop !8
}

; Function Attrs: nounwind uwtable
define double @_Z17get_res_unroll_12i(i32) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %3, label %27

; <label>:3:                                      ; preds = %1
  %4 = add i32 %0, -1
  %5 = urem i32 %4, 12
  %6 = add nuw nsw i32 %5, 1
  %7 = urem i32 %6, 12
  %8 = icmp ult i32 %4, 11
  br i1 %8, label %11, label %9

; <label>:9:                                      ; preds = %3
  %10 = sub i32 %0, %7
  br label %29

; <label>:11:                                     ; preds = %29, %3
  %12 = phi double [ undef, %3 ], [ %79, %29 ]
  %13 = phi i32 [ 0, %3 ], [ %80, %29 ]
  %14 = phi double [ 0.000000e+00, %3 ], [ %79, %29 ]
  %15 = icmp eq i32 %7, 0
  br i1 %15, label %27, label %16

; <label>:16:                                     ; preds = %11
  br label %17

; <label>:17:                                     ; preds = %16, %17
  %18 = phi i32 [ %24, %17 ], [ %13, %16 ]
  %19 = phi double [ %23, %17 ], [ %14, %16 ]
  %20 = phi i32 [ %25, %17 ], [ %7, %16 ]
  %21 = sitofp i32 %18 to double
  %22 = tail call double @sin(double %21) #2
  %23 = fadd double %19, %22
  %24 = add nuw nsw i32 %18, 1
  %25 = add i32 %20, -1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %17, !llvm.loop !9

; <label>:27:                                     ; preds = %17, %11, %1
  %28 = phi double [ 0.000000e+00, %1 ], [ %12, %11 ], [ %23, %17 ]
  ret double %28

; <label>:29:                                     ; preds = %29, %9
  %30 = phi i32 [ 0, %9 ], [ %80, %29 ]
  %31 = phi double [ 0.000000e+00, %9 ], [ %79, %29 ]
  %32 = phi i32 [ %10, %9 ], [ %81, %29 ]
  %33 = sitofp i32 %30 to double
  %34 = tail call double @sin(double %33) #2
  %35 = fadd double %31, %34
  %36 = or i32 %30, 1
  %37 = sitofp i32 %36 to double
  %38 = tail call double @sin(double %37) #2
  %39 = fadd double %35, %38
  %40 = or i32 %30, 2
  %41 = sitofp i32 %40 to double
  %42 = tail call double @sin(double %41) #2
  %43 = fadd double %39, %42
  %44 = or i32 %30, 3
  %45 = sitofp i32 %44 to double
  %46 = tail call double @sin(double %45) #2
  %47 = fadd double %43, %46
  %48 = add nuw nsw i32 %30, 4
  %49 = sitofp i32 %48 to double
  %50 = tail call double @sin(double %49) #2
  %51 = fadd double %47, %50
  %52 = add nuw nsw i32 %30, 5
  %53 = sitofp i32 %52 to double
  %54 = tail call double @sin(double %53) #2
  %55 = fadd double %51, %54
  %56 = add nuw nsw i32 %30, 6
  %57 = sitofp i32 %56 to double
  %58 = tail call double @sin(double %57) #2
  %59 = fadd double %55, %58
  %60 = add nuw nsw i32 %30, 7
  %61 = sitofp i32 %60 to double
  %62 = tail call double @sin(double %61) #2
  %63 = fadd double %59, %62
  %64 = add nuw nsw i32 %30, 8
  %65 = sitofp i32 %64 to double
  %66 = tail call double @sin(double %65) #2
  %67 = fadd double %63, %66
  %68 = add nuw nsw i32 %30, 9
  %69 = sitofp i32 %68 to double
  %70 = tail call double @sin(double %69) #2
  %71 = fadd double %67, %70
  %72 = add nuw nsw i32 %30, 10
  %73 = sitofp i32 %72 to double
  %74 = tail call double @sin(double %73) #2
  %75 = fadd double %71, %74
  %76 = add nuw nsw i32 %30, 11
  %77 = sitofp i32 %76 to double
  %78 = tail call double @sin(double %77) #2
  %79 = fadd double %75, %78
  %80 = add nuw nsw i32 %30, 12
  %81 = add i32 %32, -12
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %11, label %29, !llvm.loop !10
}

; Function Attrs: nounwind
declare double @sin(double) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.unroll.disable"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
!8 = distinct !{!8, !3}
!9 = distinct !{!9, !3}
!10 = distinct !{!10, !3}
