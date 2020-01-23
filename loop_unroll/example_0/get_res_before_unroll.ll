define double @_Z7get_resi(i32) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  br label %8

; <label>:4:                                      ; preds = %8
  %5 = phi double [ %13, %8 ]
  br label %6

; <label>:6:                                      ; preds = %4, %1
  %7 = phi double [ 0.000000e+00, %1 ], [ %5, %4 ]
  ret double %7

; <label>:8:                                      ; preds = %3, %8
  %9 = phi i32 [ %14, %8 ], [ 0, %3 ]
  %10 = phi double [ %13, %8 ], [ 0.000000e+00, %3 ]
  %11 = sitofp i32 %9 to double
  %12 = tail call double @sin(double %11) #2
  %13 = fadd double %10, %12
  %14 = add nuw nsw i32 %9, 1
  %15 = icmp eq i32 %14, %0
  br i1 %15, label %4, label %8
}

; Function Attrs: nounwind
declare double @sin(double) local_unnamed_addr #1