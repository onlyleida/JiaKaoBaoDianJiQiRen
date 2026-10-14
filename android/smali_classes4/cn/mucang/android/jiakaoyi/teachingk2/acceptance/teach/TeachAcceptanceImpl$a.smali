.class public final Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/f/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;-><init>(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$examResultCallback$1",
        "Lcn/mucang/android/jiakaoyi/engine/callback/ExamResultCallback;",
        "onOneError",
        "",
        "deduct",
        "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;",
        "onResult",
        "result",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamResult;",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOneError(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 2

    const-string v0, "deduct"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl$a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;->v(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;)Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/e;->b(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    .line 3
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->name:Ljava/lang/String;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->TeachDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->A(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;I)V

    return-void
.end method

.method public onResult(Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V
    .locals 0

    return-void
.end method
