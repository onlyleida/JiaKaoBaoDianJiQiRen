.class Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/com/x/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/a0<",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/s;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile a:Lcn/mucang/android/jiakaoyi/signal/com/x/c$a;

.field private volatile b:Ljava/util/concurrent/CountDownLatch;

.field private volatile c:Z

.field private volatile d:I

.field private volatile e:I

.field private volatile f:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;Lcn/mucang/android/jiakaoyi/signal/com/x/c$a;)Lcn/mucang/android/jiakaoyi/signal/com/x/c$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->a:Lcn/mucang/android/jiakaoyi/signal/com/x/c$a;

    return-object p1
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->c:Z

    return p0
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->c:Z

    return p1
.end method

.method static synthetic d(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->e:I

    return p1
.end method

.method static synthetic e(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->d:I

    return p1
.end method

.method static synthetic f(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->f:Z

    return p0
.end method

.method static synthetic g(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->f:Z

    return p1
.end method

.method static synthetic h(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->b:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic i(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->b:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic j(Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->l()V

    return-void
.end method

.method private l()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->a:Lcn/mucang/android/jiakaoyi/signal/com/x/c$a;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->c:Z

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->d:I

    .line 4
    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->e:I

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->f:Z

    return-void
.end method


# virtual methods
.method public k(Lcn/mucang/android/jiakaoyi/signal/communicate/s;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->f:Z

    .line 2
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/s;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x98

    if-ne v0, v2, :cond_1

    .line 3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/s;->b:Ljava/lang/Object;

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/a0;

    .line 4
    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/a0;->a:I

    iget v3, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->e:I

    if-ne v2, v3, :cond_1

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/a0;->b:I

    iget v2, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->d:I

    if-ne v0, v2, :cond_1

    .line 5
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->f:Z

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->b:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->a:Lcn/mucang/android/jiakaoyi/signal/com/x/c$a;

    if-nez v0, :cond_2

    return-void

    .line 9
    :cond_2
    iget v2, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/s;->a:I

    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/com/x/c$a;->b:I

    if-eq v2, v3, :cond_3

    return-void

    .line 10
    :cond_3
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->c:Z

    .line 11
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/com/x/c$a;->e:Lcn/mucang/android/jiakaoyi/framework/h/a;

    if-eqz v1, :cond_4

    .line 12
    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/com/x/c$a;->c:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/com/x/c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/s;->b:Ljava/lang/Object;

    invoke-interface {v1, p1}, Lcn/mucang/android/jiakaoyi/framework/h/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->c:Z

    .line 14
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->b:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_5

    .line 15
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_5
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/s;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/com/x/e/c$b;->k(Lcn/mucang/android/jiakaoyi/signal/communicate/s;)V

    return-void
.end method
