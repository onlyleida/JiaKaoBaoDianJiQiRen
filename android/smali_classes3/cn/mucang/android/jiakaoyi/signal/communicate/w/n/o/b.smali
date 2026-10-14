.class public Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

.field public static final c:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

.field public static final d:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

.field public static final e:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

.field public static final f:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/com/Cmd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;-><init>()V

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/com/o;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;->c:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;-><init>()V

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/com/o;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;->d:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;-><init>()V

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/com/o;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;->e:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;-><init>()V

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/com/o;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;-><init>()V

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/com/o;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;->f:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/com/Cmd;",
            ">;)",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/o/b;->a:Ljava/util/List;

    return-object p0
.end method
