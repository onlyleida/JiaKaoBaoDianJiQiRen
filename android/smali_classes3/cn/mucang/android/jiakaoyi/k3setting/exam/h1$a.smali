.class Lcn/mucang/android/jiakaoyi/k3setting/exam/h1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickClose()V
    .locals 0

    return-void
.end method

.method public onFailure(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;->a(Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;)Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;->onFailure(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    return-void
.end method

.method public onFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1$a;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;->a(Lcn/mucang/android/jiakaoyi/k3setting/exam/h1;)Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;->onFinish()V

    return-void
.end method

.method public onStart(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)V
    .locals 0

    return-void
.end method
