; ModuleID = 'inline.cpp'
source_filename = "inline.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define double @_Z4calci(i32) local_unnamed_addr #0 {
  %2 = sitofp i32 %0 to double
  %3 = fdiv double %2, 1.000000e+02
  %4 = tail call double @sin(double %3) #2
  %5 = tail call double @cos(double %3) #2
  %6 = fadd double %4, %5
  ret double %6
}

; Function Attrs: nounwind
declare double @sin(double) local_unnamed_addr #1

; Function Attrs: nounwind
declare double @cos(double) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define double @_Z7get_resv() local_unnamed_addr #0 {
  br label %2

; <label>:1:                                      ; preds = %2
  ret double %17

; <label>:2:                                      ; preds = %2, %0
  %3 = phi i32 [ 0, %0 ], [ %18, %2 ]
  %4 = phi double [ 0.000000e+00, %0 ], [ %17, %2 ]
  %5 = sitofp i32 %3 to double
  %6 = fdiv double %5, 1.000000e+02
  %7 = tail call double @sin(double %6) #2
  %8 = tail call double @cos(double %6) #2
  %9 = fadd double %7, %8
  %10 = fadd double %4, %9
  %11 = or i32 %3, 1
  %12 = sitofp i32 %11 to double
  %13 = fdiv double %12, 1.000000e+02
  %14 = tail call double @sin(double %13) #2
  %15 = tail call double @cos(double %13) #2
  %16 = fadd double %14, %15
  %17 = fadd double %10, %16
  %18 = add nuw nsw i32 %3, 2
  %19 = icmp eq i32 %18, 100000000
  br i1 %19, label %1, label %2
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
