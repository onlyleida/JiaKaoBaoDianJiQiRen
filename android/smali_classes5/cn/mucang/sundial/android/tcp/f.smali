.class public final synthetic Lcn/mucang/sundial/android/tcp/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/sundial/android/tcp/SocketManager;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/sundial/android/tcp/SocketManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/f;->a:Lcn/mucang/sundial/android/tcp/SocketManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/f;->a:Lcn/mucang/sundial/android/tcp/SocketManager;

    invoke-static {v0}, Lcn/mucang/sundial/android/tcp/SocketManager;->a(Lcn/mucang/sundial/android/tcp/SocketManager;)V

    return-void
.end method
