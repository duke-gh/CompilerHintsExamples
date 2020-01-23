define double @_Z7get_resi(i32) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %3, label %29

; <label>:3:                                      ; preds = %1
  %4 = add i32 %0, -1
  %5 = and i32 %0, 3
  %6 = icmp ult i32 %4, 3
  br i1 %6, label %10, label %7

; <label>:7:                                      ; preds = %3
  %8 = sub i32 %0, %5
  br label %31

; <label>:9:                                      ; preds = %31
  br label %10

; <label>:10:                                     ; preds = %9, %3
  %11 = phi double [ undef, %3 ], [ %49, %9 ]
  %12 = phi i32 [ 0, %3 ], [ %50, %9 ]
  %13 = phi double [ 0.000000e+00, %3 ], [ %49, %9 ]
  %14 = icmp eq i32 %5, 0
  br i1 %14, label %27, label %15

; <label>:15:                                     ; preds = %10
  br label %16

; <label>:16:                                     ; preds = %16, %15
  %17 = phi i32 [ %23, %16 ], [ %12, %15 ]
  %18 = phi double [ %22, %16 ], [ %13, %15 ]
  %19 = phi i32 [ %24, %16 ], [ %5, %15 ]
  %20 = sitofp i32 %17 to double
  %21 = tail call double @sin(double %20) #2
  %22 = fadd double %18, %21
  %23 = add nuw nsw i32 %17, 1
  %24 = add i32 %19, -1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %16, !llvm.loop !2

; <label>:26:                                     ; preds = %16
  br label %27

; <label>:27:                                     ; preds = %10, %26
  %28 = phi double [ %11, %10 ], [ %22, %26 ]
  br label %29

; <label>:29:                                     ; preds = %27, %1
  %30 = phi double [ 0.000000e+00, %1 ], [ %28, %27 ]
  ret double %30

; <label>:31:                                     ; preds = %31, %7
  %32 = phi i32 [ 0, %7 ], [ %50, %31 ]
  %33 = phi double [ 0.000000e+00, %7 ], [ %49, %31 ]
  %34 = phi i32 [ %8, %7 ], [ %51, %31 ]
  %35 = sitofp i32 %32 to double
  %36 = tail call double @sin(double %35) #2
  %37 = fadd double %33, %36
  %38 = or i32 %32, 1
  %39 = sitofp i32 %38 to double
  %40 = tail call double @sin(double %39) #2
  %41 = fadd double %37, %40
  %42 = or i32 %32, 2
  %43 = sitofp i32 %42 to double
  %44 = tail call double @sin(double %43) #2
  %45 = fadd double %41, %44
  %46 = or i32 %32, 3
  %47 = sitofp i32 %46 to double
  %48 = tail call double @sin(double %47) #2
  %49 = fadd double %45, %48
  %50 = add nuw nsw i32 %32, 4
  %51 = add i32 %34, -4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %9, label %31
}

; Function Attrs: nounwind
declare double @sin(double) local_unnamed_addr #1

!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.unroll.disable"}