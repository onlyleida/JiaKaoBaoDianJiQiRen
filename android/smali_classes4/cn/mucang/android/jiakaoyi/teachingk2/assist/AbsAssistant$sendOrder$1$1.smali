.class final Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$1;
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

.field final synthetic $proj:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;II)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;

    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$1;->$act:I

    iput p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$1;->$proj:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d1\u9001\u8f85\u52a9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;

    iget v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$1;->$act:I

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->a(Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u6307\u4ee4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->m(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$1;->$proj:I

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant$sendOrder$1$1;->$act:I

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/AbsAssistant;->q(II)V

    return-void
.end method
