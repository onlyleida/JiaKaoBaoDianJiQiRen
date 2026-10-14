.class final Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$controlSafeModule$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->f(ZZLkotlin/jvm/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/k;",
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
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveControlSafeModuleInfo;"
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
.field final synthetic $needToast:Z

.field final synthetic $onSuccess:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tip:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkotlin/jvm/b/a;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$controlSafeModule$3;->$onSuccess:Lkotlin/jvm/b/a;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$controlSafeModule$3;->$tip:Ljava/lang/String;

    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$controlSafeModule$3;->$needToast:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/k;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$controlSafeModule$3;->invoke(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/k;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/k;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    const-string v0, "\u4e0b\u53d1"

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$controlSafeModule$3;->$onSuccess:Lkotlin/jvm/b/a;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    .line 3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$controlSafeModule$3;->$tip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u6210\u529f"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_1

    .line 4
    :cond_1
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$controlSafeModule$3;->$needToast:Z

    const-string v1, "\u5931\u8d25"

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$controlSafeModule$3;->$tip:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$controlSafeModule$3;->$tip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
