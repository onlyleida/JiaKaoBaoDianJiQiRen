.class public Lcn/mucang/android/core/api/cache/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/api/cache/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcn/mucang/android/core/api/cache/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/core/api/cache/c;

    invoke-direct {v0}, Lcn/mucang/android/core/api/cache/c;-><init>()V

    invoke-direct {p0, v0}, Lcn/mucang/android/core/api/cache/c$a;-><init>(Lcn/mucang/android/core/api/cache/c;)V

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/core/api/cache/c;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/mucang/android/core/api/cache/c$a;->a:Lcn/mucang/android/core/api/cache/c;

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad cache config."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcn/mucang/android/core/api/cache/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/c$a;->a:Lcn/mucang/android/core/api/cache/c;

    return-object v0
.end method

.method public b(Lcn/mucang/android/core/api/cache/d;)Lcn/mucang/android/core/api/cache/c$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/c$a;->a:Lcn/mucang/android/core/api/cache/c;

    invoke-static {v0, p1}, Lcn/mucang/android/core/api/cache/c;->a(Lcn/mucang/android/core/api/cache/c;Lcn/mucang/android/core/api/cache/d;)Lcn/mucang/android/core/api/cache/d;

    return-object p0
.end method

.method public c(Lcn/mucang/android/core/api/cache/CacheMode;)Lcn/mucang/android/core/api/cache/c$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/c$a;->a:Lcn/mucang/android/core/api/cache/c;

    invoke-static {v0, p1}, Lcn/mucang/android/core/api/cache/c;->e(Lcn/mucang/android/core/api/cache/c;Lcn/mucang/android/core/api/cache/CacheMode;)Lcn/mucang/android/core/api/cache/CacheMode;

    return-object p0
.end method

.method public d(Lcn/mucang/android/core/api/cache/e;)Lcn/mucang/android/core/api/cache/c$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/c$a;->a:Lcn/mucang/android/core/api/cache/c;

    invoke-static {v0, p1}, Lcn/mucang/android/core/api/cache/c;->d(Lcn/mucang/android/core/api/cache/c;Lcn/mucang/android/core/api/cache/e;)Lcn/mucang/android/core/api/cache/e;

    return-object p0
.end method

.method public e(Lcn/mucang/android/core/api/cache/f;)Lcn/mucang/android/core/api/cache/c$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/c$a;->a:Lcn/mucang/android/core/api/cache/c;

    invoke-static {v0, p1}, Lcn/mucang/android/core/api/cache/c;->c(Lcn/mucang/android/core/api/cache/c;Lcn/mucang/android/core/api/cache/f;)Lcn/mucang/android/core/api/cache/f;

    return-object p0
.end method

.method public f(Lcn/mucang/android/core/api/cache/g;)Lcn/mucang/android/core/api/cache/c$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/c$a;->a:Lcn/mucang/android/core/api/cache/c;

    invoke-static {v0, p1}, Lcn/mucang/android/core/api/cache/c;->b(Lcn/mucang/android/core/api/cache/c;Lcn/mucang/android/core/api/cache/g;)Lcn/mucang/android/core/api/cache/g;

    return-object p0
.end method

.method public g(J)Lcn/mucang/android/core/api/cache/c$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/c$a;->a:Lcn/mucang/android/core/api/cache/c;

    invoke-static {v0, p1, p2}, Lcn/mucang/android/core/api/cache/c;->g(Lcn/mucang/android/core/api/cache/c;J)J

    return-object p0
.end method

.method public h(Z)Lcn/mucang/android/core/api/cache/c$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/c$a;->a:Lcn/mucang/android/core/api/cache/c;

    invoke-static {v0, p1}, Lcn/mucang/android/core/api/cache/c;->f(Lcn/mucang/android/core/api/cache/c;Z)Z

    return-object p0
.end method
