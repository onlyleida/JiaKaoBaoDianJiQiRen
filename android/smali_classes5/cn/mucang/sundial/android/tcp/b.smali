.class public final synthetic Lcn/mucang/sundial/android/tcp/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/b;->a:Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;

    iput-boolean p2, p0, Lcn/mucang/sundial/android/tcp/b;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/b;->a:Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;

    iget-boolean v1, p0, Lcn/mucang/sundial/android/tcp/b;->b:Z

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/PacketResponseObserver$ObserveRequest;->b(Z)V

    return-void
.end method
