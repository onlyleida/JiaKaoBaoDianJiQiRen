.class public final Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/library/SundialCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;->invokeSuspend$loginStudent(Landroid/app/Activity;Ljava/lang/String;ZLkotlin/jvm/internal/Ref$ObjectRef;ZLkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "cn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$loginStudent$1",
        "Lcn/mucang/sundial/library/SundialCallBack;",
        "onResult",
        "",
        "success",
        "",
        "sundial_release"
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
.field final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcn/mucang/sundial/library/entity/ServerStudentInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;ZZLkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcn/mucang/sundial/library/entity/ServerStudentInfo;",
            ">;ZZ",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$c;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-boolean p2, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$c;->b:Z

    iput-boolean p3, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$c;->c:Z

    iput-object p4, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$c;->d:Lkotlin/jvm/b/a;

    iput-object p5, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$c;->e:Lkotlin/jvm/b/a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 1

    if-eqz p1, :cond_6

    const-string p1, "interceptLogin\uff1a\u5b66\u5458\u7b7e\u5230\u6210\u529f"

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$c;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p1, :cond_5

    .line 3
    check-cast p1, Lcn/mucang/sundial/library/entity/ServerStudentInfo;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/ServerStudentInfo;->getTodayVehicleSurplusTime()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "\u4eca\u65e5\u5df2\u8fbe\u5230\u5355\u65e5\u5b66\u4e60\u65f6\u957f\u4e0a\u9650\uff0c\u7ee7\u7eed\u8ba1\u65f6\u5b66\u65f6\u65e0\u6548\u54e6\uff01"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto :goto_2

    .line 6
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$c;->b:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$c;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcn/mucang/sundial/library/entity/ServerStudentInfo;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/ServerStudentInfo;->getSubject2SurplusTime()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "\u60a8\u5df2\u5b8c\u6210\u79d1\u76ee\u4e8c\u9636\u6bb5\u5b66\u65f6\u8981\u6c42\uff01"

    .line 7
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto :goto_2

    .line 9
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$c;->b:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$c;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcn/mucang/sundial/library/entity/ServerStudentInfo;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/entity/ServerStudentInfo;->getSubject3SurplusTime()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "\u60a8\u5df2\u5b8c\u6210\u79d1\u76ee\u4e09\u9636\u6bb5\u5b66\u65f6\u8981\u6c42\uff01"

    .line 10
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 12
    :cond_5
    :goto_2
    sget-object p1, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialClient;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->A()Lkotlinx/coroutines/flow/b2;

    move-result-object p1

    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$c;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/b2;->setValue(Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$c;->d:Lkotlin/jvm/b/a;

    invoke-interface {p1}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    goto :goto_3

    :cond_6
    const-string p1, "interceptLogin\uff1a\u5b66\u5458\u7b7e\u5230\u5931\u8d25"

    .line 14
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1$c;->e:Lkotlin/jvm/b/a;

    invoke-interface {p1}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    :goto_3
    return-void
.end method
