.class public final Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$ClassTimeTip;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0016B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0007J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0015H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R#\u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0019\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\r\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;",
        "",
        "()V",
        "hasSpeak",
        "Landroid/util/SparseBooleanArray;",
        "job",
        "Lkotlinx/coroutines/Job;",
        "noClass",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lkotlin/Pair;",
        "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;",
        "",
        "getNoClass",
        "()Landroidx/lifecycle/MutableLiveData;",
        "time",
        "Lcn/mucang/jiakaoyi/uilib/login/AppointClassEntity;",
        "getTime",
        "end",
        "",
        "start",
        "timeOutCallback",
        "Lcn/mucang/jiakaoyi/uilib/login/TimeOutCallback;",
        "ClassTimeTip",
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
.field public static final a:Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;

.field private static final b:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Lcn/mucang/jiakaoyi/uilib/login/k;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Lkotlin/Pair<",
            "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final d:Landroid/util/SparseBooleanArray;

.field private static e:Lkotlinx/coroutines/t1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;->a:Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;

    .line 1
    new-instance v0, Landroidx/lifecycle/z;

    invoke-direct {v0}, Landroidx/lifecycle/z;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;->b:Landroidx/lifecycle/z;

    .line 2
    new-instance v0, Landroidx/lifecycle/z;

    invoke-direct {v0}, Landroidx/lifecycle/z;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;->c:Landroidx/lifecycle/z;

    .line 3
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;->d:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Landroid/util/SparseBooleanArray;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;->d:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method public static final b()V
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;->e:Lkotlinx/coroutines/t1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :goto_0
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;->d:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;->b:Landroidx/lifecycle/z;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method

.method public static final e(Lcn/mucang/jiakaoyi/uilib/login/n;)V
    .locals 10

    const-string v0, "timeOutCallback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;->b:Landroidx/lifecycle/z;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/login/k;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/k;->a()J

    move-result-wide v2

    iput-wide v2, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 3
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;->e:Lkotlinx/coroutines/t1;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v2}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 4
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$start$1;

    invoke-direct {v7, v1, p0, v2}, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager$start$1;-><init>(Lkotlin/jvm/internal/Ref$LongRef;Lcn/mucang/jiakaoyi/uilib/login/n;Lkotlin/coroutines/c;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p0

    sput-object p0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;->e:Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public final c()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Lkotlin/Pair<",
            "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;->c:Landroidx/lifecycle/z;

    return-object v0
.end method

.method public final d()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Lcn/mucang/jiakaoyi/uilib/login/k;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/ClassTimeManager;->b:Landroidx/lifecycle/z;

    return-object v0
.end method
