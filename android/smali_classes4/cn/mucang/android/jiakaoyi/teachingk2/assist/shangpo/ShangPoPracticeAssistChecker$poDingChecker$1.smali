.class final Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker$poDingChecker$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;-><clinit>()V
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


# static fields
.field public static final INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker$poDingChecker$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker$poDingChecker$1;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker$poDingChecker$1;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker$poDingChecker$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker$poDingChecker$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker$poDingChecker$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;

    const/4 v1, 0x0

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->M(Z)V

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->D(Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;)V

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_on_shangpo_top:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teachbase_on_shangpo_top)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->l0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
