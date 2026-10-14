.class final Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$handleFpResult$3;
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
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$handleFpResult$3;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$handleFpResult$3;->$it:Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$handleFpResult$3;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$handleFpResult$3;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$handleFpResult$3;->$it:Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->step:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    const-string v2, "it.step"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;->e(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_no_guide_video:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.teachbase_no_guide_video)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$handleFpResult$3;->$it:Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->step:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->desc:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$handleFpResult$3;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage$handleFpResult$3;->$it:Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;

    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->step:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;->v(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;ZLkotlin/jvm/b/a;ILjava/lang/Object;)V

    return-void
.end method
