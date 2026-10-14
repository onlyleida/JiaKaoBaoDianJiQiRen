.class final Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->t(Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;IILkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V
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
.field final synthetic $act:I

.field final synthetic $loadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

.field final synthetic $onTimeout:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $proj:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;IILkotlin/jvm/b/a;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;",
            "II",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$2;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;

    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$2;->$proj:I

    iput p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$2;->$act:I

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$2;->$onTimeout:Lkotlin/jvm/b/a;

    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$2;->$loadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$2;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 1
    sget-object v0, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_subsidiary_order_timeout:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.teach\u2026subsidiary_order_timeout)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$2;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;

    iget v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$2;->$proj:I

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->c(Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$2;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;

    iget v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$2;->$act:I

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->a(Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$2;->$onTimeout:Lkotlin/jvm/b/a;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    .line 3
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$2;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->p(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$2;->$loadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    return-void
.end method
