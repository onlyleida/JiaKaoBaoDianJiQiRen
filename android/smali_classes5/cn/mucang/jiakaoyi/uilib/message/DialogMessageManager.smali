.class public final Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J2\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0016\u0008\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\t\u0018\u00010\u000fJ\u0006\u0010\u0011\u001a\u00020\tJ\u000e\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0005J\u0014\u0010\u0014\u001a\u00020\t2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0016R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;",
        "",
        "()V",
        "dialogShowCallback",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;",
        "mDialogChainOwner",
        "Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;",
        "confirm",
        "",
        "messageId",
        "",
        "buttonInfo",
        "Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;",
        "callback",
        "Lkotlin/Function1;",
        "",
        "loadMessageList",
        "showMessageDialogBySocket",
        "dialogDetail",
        "showMessageDialogs",
        "details",
        "",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;

.field private static b:Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;

.field private static final c:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;->a:Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/message/a;->a:Lcn/mucang/jiakaoyi/uilib/message/a;

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcn/mucang/android/jiakaoyi/framework/h/b;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-object v0
.end method

.method public static final synthetic b()Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;->b:Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;

    return-object v0
.end method

.method public static synthetic d(Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;Lkotlin/jvm/b/l;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 1
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;->c(Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;Lkotlin/jvm/b/l;)V

    return-void
.end method

.method private static final e(Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;->getConfig()Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/message/DialogConfig;->isAutoConfirm()Z

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_1
    if-eqz v0, :cond_3

    .line 2
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;->a:Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;->getMessageId()Ljava/lang/String;

    move-result-object v2

    const-string p0, "detail.messageId"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;->d(Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;Lkotlin/jvm/b/l;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static synthetic f(Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;->e(Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;Lkotlin/jvm/b/l;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "messageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager$confirm$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p2, p3, v0}, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager$confirm$1;-><init>(Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/message/ButtonConfig;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final g(Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;)V
    .locals 7

    const-string v0, "dialogDetail"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager$showMessageDialogBySocket$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager$showMessageDialogBySocket$1;-><init>(Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final h(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;",
            ">;)V"
        }
    .end annotation

    const-string v0, "details"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager$a;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager$a;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/s;->G0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lkotlin/collections/s;->M0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcn/mucang/android/core/config/n;

    if-eqz v1, :cond_3

    .line 5
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;

    move-object v2, v0

    check-cast v2, Lcn/mucang/android/core/config/n;

    invoke-direct {v1, v2}, Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;-><init>(Lcn/mucang/android/core/config/n;)V

    sput-object v1, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;->b:Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;

    .line 7
    sget-object v2, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;->b:Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;

    if-nez v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/message/dialog/g;

    sget-object v4, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-direct {v3, v0, v1, v4}, Lcn/mucang/jiakaoyi/uilib/message/dialog/g;-><init>(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/message/DialogMessageDetail;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 9
    invoke-virtual {v2, v3}, Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;->f(Lcn/mucang/jiakaoyi/uilib/message/dialog/f;)Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;

    goto :goto_0

    .line 10
    :cond_1
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/message/DialogMessageManager;->b:Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/message/dialog/DialogChainOwner;->n()V

    :cond_3
    :goto_1
    return-void
.end method
