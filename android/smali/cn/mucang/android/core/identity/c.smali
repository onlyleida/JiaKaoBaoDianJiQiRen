.class public final synthetic Lcn/mucang/android/core/identity/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bun/miitmdid/interfaces/IIdentifierListener;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/identity/c;->a:Ljava/util/concurrent/CountDownLatch;

    iput-wide p2, p0, Lcn/mucang/android/core/identity/c;->b:J

    return-void
.end method


# virtual methods
.method public final OnSupport(ZLcom/bun/miitmdid/interfaces/IdSupplier;)V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/core/identity/c;->a:Ljava/util/concurrent/CountDownLatch;

    iget-wide v1, p0, Lcn/mucang/android/core/identity/c;->b:J

    invoke-static {v0, v1, v2, p1, p2}, Lcn/mucang/android/core/identity/j;->j(Ljava/util/concurrent/CountDownLatch;JZLcom/bun/miitmdid/interfaces/IdSupplier;)V

    return-void
.end method
