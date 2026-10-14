.class public Lcn/mucang/android/core/api/cache/impl/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/api/cache/impl/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcn/mucang/android/core/api/cache/impl/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/core/api/cache/impl/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/core/api/cache/impl/d;-><init>(Lcn/mucang/android/core/api/cache/impl/d$a;)V

    iput-object v0, p0, Lcn/mucang/android/core/api/cache/impl/d$b;->a:Lcn/mucang/android/core/api/cache/impl/d;

    return-void
.end method


# virtual methods
.method public a()Lcn/mucang/android/core/api/cache/impl/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/impl/d$b;->a:Lcn/mucang/android/core/api/cache/impl/d;

    invoke-static {v0}, Lcn/mucang/android/core/api/cache/impl/d;->d(Lcn/mucang/android/core/api/cache/impl/d;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/impl/d$b;->a:Lcn/mucang/android/core/api/cache/impl/d;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcn/mucang/android/core/api/cache/impl/d$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/cache/impl/d$b;->a:Lcn/mucang/android/core/api/cache/impl/d;

    invoke-static {v0, p1}, Lcn/mucang/android/core/api/cache/impl/d;->c(Lcn/mucang/android/core/api/cache/impl/d;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method
