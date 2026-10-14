.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/a;
.super Ljava/lang/Object;
.source "PathTipTrigger.java"


# direct methods
.method public static a(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V
    .locals 2
    .param p0, "_this"    # Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->h(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5b8c\u6210\u5b50\u6b65\u9aa4:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->teach:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->teach:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->subStep:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;Ljava/lang/String;)V
    .locals 1
    .param p0, "_this"    # Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/a1/b;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/b;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    return-void
.end method
