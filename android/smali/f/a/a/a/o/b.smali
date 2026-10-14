.class public Lf/a/a/a/o/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/a/o/b$c;,
        Lf/a/a/a/o/b$b;
    }
.end annotation


# static fields
.field public static b:Ljava/lang/String; = "f.a.a.a.o.b"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lf/a/a/a/o/b$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lf/a/a/a/o/b;->a:Ljava/util/Set;

    .line 4
    new-instance v0, Lf/a/a/a/o/a;

    invoke-direct {v0}, Lf/a/a/a/o/a;-><init>()V

    invoke-virtual {p0, v0}, Lf/a/a/a/o/b;->a(Lf/a/a/a/o/b$c;)V

    .line 5
    new-instance v0, Lf/a/a/a/e;

    invoke-direct {v0}, Lf/a/a/a/e;-><init>()V

    invoke-virtual {p0, v0}, Lf/a/a/a/o/b;->a(Lf/a/a/a/o/b$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lf/a/a/a/o/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/a/o/b;-><init>()V

    return-void
.end method

.method public static c()Lf/a/a/a/o/b;
    .locals 1

    .line 1
    invoke-static {}, Lf/a/a/a/o/b$b;->a()Lf/a/a/a/o/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lf/a/a/a/o/b$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/a/o/b;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/a/a/a/o/b;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/a/a/o/b$c;

    .line 2
    :try_start_0
    invoke-interface {v1, p1, p2}, Lf/a/a/a/o/b$c;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-void

    :catch_0
    move-exception v1

    .line 3
    sget-object v2, Lf/a/a/a/o/b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method
