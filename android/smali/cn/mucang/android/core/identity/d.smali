.class public final synthetic Lcn/mucang/android/core/identity/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/bun/miitmdid/interfaces/IdSupplier;

.field public final synthetic b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/bun/miitmdid/interfaces/IdSupplier;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/identity/d;->a:Lcom/bun/miitmdid/interfaces/IdSupplier;

    iput-object p2, p0, Lcn/mucang/android/core/identity/d;->b:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/core/identity/d;->a:Lcom/bun/miitmdid/interfaces/IdSupplier;

    iget-object v1, p0, Lcn/mucang/android/core/identity/d;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1}, Lcn/mucang/android/core/identity/j;->k(Lcom/bun/miitmdid/interfaces/IdSupplier;Ljava/util/concurrent/CountDownLatch;)Lkotlin/v;

    move-result-object v0

    return-object v0
.end method
