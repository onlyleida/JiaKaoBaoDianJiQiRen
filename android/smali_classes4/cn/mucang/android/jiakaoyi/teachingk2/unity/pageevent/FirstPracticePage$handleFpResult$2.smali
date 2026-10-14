.class final Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$handleFpResult$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;->l(Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $it:Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$handleFpResult$2;->$it:Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$handleFpResult$2;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$handleFpResult$2;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9996\u8bad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$handleFpResult$2;->$it:Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->step:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\u8003\u6838\u5931\u8d25\uff0c\u70b9\u51fb\u91cd\u65b0\u8003\u6838"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$handleFpResult$2;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$handleFpResult$2;->$it:Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->step:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    const-string v2, "it.step"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;->f(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->b()V

    return-void
.end method
