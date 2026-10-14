.class final Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


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
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveAssistModel;"
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

.field final synthetic $onSuccess:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

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
.method constructor <init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;Lkotlin/jvm/b/a;IILkotlin/jvm/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;II",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$3;->$loadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$3;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$3;->$onSuccess:Lkotlin/jvm/b/a;

    iput p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$3;->$act:I

    iput p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$3;->$proj:I

    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$3;->$onTimeout:Lkotlin/jvm/b/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$3;->invoke(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c;)V
    .locals 6

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$3;->$loadingDialog:Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->dismiss()V

    .line 2
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$3;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$3;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;

    iget v3, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c;->b:I

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->c(Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u8f85\u52a9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$3;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c;->c:I

    invoke-static {v2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->a(Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u6307\u4ee4\u54cd\u5e94\u6210\u529f"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$3;->$onSuccess:Lkotlin/jvm/b/a;

    invoke-interface {p1}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    .line 5
    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$3;->$act:I

    if-nez p1, :cond_2

    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$3;->$proj:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    .line 6
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$3;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/f;->i(Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;)V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_subsidiary_order_fail:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.teach\u2026se_subsidiary_order_fail)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$3;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;

    iget v5, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c;->b:I

    invoke-static {v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->c(Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$3;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c;->c:I

    invoke-static {v4, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->a(Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$3;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->p(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$3;->$onTimeout:Lkotlin/jvm/b/a;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method
