.class public final synthetic Lcn/mucang/sundial/android/tcp/message/handler/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/sundial/android/tcp/message/receive/SupplementPacketRequest;

.field public final synthetic b:[I


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/sundial/android/tcp/message/receive/SupplementPacketRequest;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/handler/b;->a:Lcn/mucang/sundial/android/tcp/message/receive/SupplementPacketRequest;

    iput-object p2, p0, Lcn/mucang/sundial/android/tcp/message/handler/b;->b:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/handler/b;->a:Lcn/mucang/sundial/android/tcp/message/receive/SupplementPacketRequest;

    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/handler/b;->b:[I

    invoke-static {v0, v1}, Lcn/mucang/sundial/android/tcp/message/handler/SupplementPacketMessageHandler;->a(Lcn/mucang/sundial/android/tcp/message/receive/SupplementPacketRequest;[I)V

    return-void
.end method
