.class public Lf/a/a/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/a/h$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/core/config/y/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lf/a/a/a/h;->a:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lf/a/a/a/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/a/h;-><init>()V

    return-void
.end method

.method public static b()Lf/a/a/a/h;
    .locals 1

    .line 1
    invoke-static {}, Lf/a/a/a/h$b;->a()Lf/a/a/a/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcn/mucang/android/core/config/y/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/a/h;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/config/y/b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lf/a/a/a/h;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
