.class Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a$b;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method
