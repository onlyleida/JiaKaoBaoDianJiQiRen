.class public final Lcn/mucang/android/jiakaoyi/framework/g/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/framework/g/f$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0012B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0008H\u0007J\u0008\u0010\u0011\u001a\u00020\u000fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0010\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\u00080\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/dialogmgr/DialogMgr;",
        "",
        "()V",
        "Priority_1",
        "",
        "Priority_2",
        "finishCallback",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "Lcn/mucang/android/jiakaoyi/framework/dialogmgr/DialogMgr$DialogShow;",
        "kotlin.jvm.PlatformType",
        "lastTime",
        "",
        "showTask",
        "",
        "clear",
        "",
        "insert",
        "show",
        "DialogShow",
        "framework_release"
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
.field public static final a:Lcn/mucang/android/jiakaoyi/framework/g/f;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/framework/g/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/framework/g/f$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/g/f;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/g/f;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/g/f;->a:Lcn/mucang/android/jiakaoyi/framework/g/f;

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/g/f;->b:Ljava/util/List;

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/g/e;->a:Lcn/mucang/android/jiakaoyi/framework/g/e;

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/g/f;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final b()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/g/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private static final c(Lcn/mucang/android/jiakaoyi/framework/g/f$a;)V
    .locals 4

    const-string v0, "data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/g/f;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f39\u7a97\u7ba1\u7406-\u56de\u8c03:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/framework/g/f$a;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    sget-object p0, Lcn/mucang/android/jiakaoyi/framework/g/f;->a:Lcn/mucang/android/jiakaoyi/framework/g/f;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/g/f;->m()V

    :cond_0
    return-void
.end method

.method public static final d(Lcn/mucang/android/jiakaoyi/framework/g/f$a;)V
    .locals 3

    const-string v0, "show"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/framework/g/f$a;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u5f39\u7a97\u7ba1\u7406-\u6dfb\u52a0:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/core/utils/u;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/g/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    .line 4
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    sget-object p0, Lcn/mucang/android/jiakaoyi/framework/g/a;->a:Lcn/mucang/android/jiakaoyi/framework/g/a;

    invoke-static {v0, p0}, Lkotlin/collections/s;->A(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v1, :cond_2

    .line 7
    sget-object p0, Lcn/mucang/android/jiakaoyi/framework/g/b;->a:Lcn/mucang/android/jiakaoyi/framework/g/b;

    const-wide/16 v0, 0x1f4

    .line 8
    invoke-static {p0, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/g/c;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/g/c;-><init>(Lcn/mucang/android/jiakaoyi/framework/g/f$a;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static final e(Lcn/mucang/android/jiakaoyi/framework/g/f$a;Lcn/mucang/android/jiakaoyi/framework/g/f$a;)I
    .locals 1

    const-string v0, "o1"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "o2"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/framework/g/f$a;->b()I

    move-result p0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/framework/g/f$a;->b()I

    move-result p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->g(II)I

    move-result p0

    return p0
.end method

.method private static final f()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/g/f;->a:Lcn/mucang/android/jiakaoyi/framework/g/f;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/g/f;->m()V

    return-void
.end method

.method private static final g(Lcn/mucang/android/jiakaoyi/framework/g/f$a;)V
    .locals 1

    const-string v0, "$show"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/g/f;->d(Lcn/mucang/android/jiakaoyi/framework/g/f$a;)V

    return-void
.end method

.method public static synthetic h(Lcn/mucang/android/jiakaoyi/framework/g/f$a;Lcn/mucang/android/jiakaoyi/framework/g/f$a;)I
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/g/f;->e(Lcn/mucang/android/jiakaoyi/framework/g/f$a;Lcn/mucang/android/jiakaoyi/framework/g/f$a;)I

    move-result p0

    return p0
.end method

.method public static synthetic i()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/g/f;->f()V

    return-void
.end method

.method public static synthetic j(Lcn/mucang/android/jiakaoyi/framework/g/f$a;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/g/f;->g(Lcn/mucang/android/jiakaoyi/framework/g/f$a;)V

    return-void
.end method

.method public static synthetic k()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/g/f;->b()V

    return-void
.end method

.method public static synthetic l(Lcn/mucang/android/jiakaoyi/framework/g/f$a;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/g/f;->c(Lcn/mucang/android/jiakaoyi/framework/g/f$a;)V

    return-void
.end method

.method private final m()V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/g/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Lkotlin/collections/s;->o0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/framework/g/f$a;

    .line 3
    :try_start_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/g/f;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-interface {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/g/f$a;->c(Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 4
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5f39\u7a97\u7ba1\u7406-\u5f02\u5e38:"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/g/f;->c:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-interface {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/g/d;->a:Lcn/mucang/android/jiakaoyi/framework/g/d;

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method
