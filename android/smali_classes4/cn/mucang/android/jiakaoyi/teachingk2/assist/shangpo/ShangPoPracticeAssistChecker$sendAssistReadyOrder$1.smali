.class final Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker$sendAssistReadyOrder$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->d0()V
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
.field public static final INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker$sendAssistReadyOrder$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker$sendAssistReadyOrder$1;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker$sendAssistReadyOrder$1;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker$sendAssistReadyOrder$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker$sendAssistReadyOrder$1;

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
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker$sendAssistReadyOrder$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->H()I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->N(I)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->E()Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    :goto_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;->e:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;->I()V

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker;->G()Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/h;->g()V

    .line 6
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker$sendAssistReadyOrder$1$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistChecker$sendAssistReadyOrder$1$1;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/ShangPoPracticeAssistant;->H(Lkotlin/jvm/b/a;)V

    return-void
.end method
