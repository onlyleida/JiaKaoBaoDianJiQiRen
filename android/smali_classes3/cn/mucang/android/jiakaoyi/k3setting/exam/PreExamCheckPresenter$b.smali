.class Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$b;
.super Lcn/mucang/android/jiakaoyi/framework/tts/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$b;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeakEnd()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$b;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->e(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter$b;->a:Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;->d(Lcn/mucang/android/jiakaoyi/k3setting/exam/PreExamCheckPresenter;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
