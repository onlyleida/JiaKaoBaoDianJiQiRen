.class final Lcn/mucang/android/core/utils/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/android/core/utils/RpcRegInfo;",
        "",
        "pid",
        "",
        "rpcAction",
        "Lcn/mucang/android/core/utils/RpcAction;",
        "(ILcn/mucang/android/core/utils/RpcAction;)V",
        "getPid",
        "()I",
        "getRpcAction",
        "()Lcn/mucang/android/core/utils/RpcAction;",
        "core-lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:I

.field private final b:Lcn/mucang/android/core/utils/e0;


# direct methods
.method public constructor <init>(ILcn/mucang/android/core/utils/e0;)V
    .locals 1

    const-string v0, "rpcAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcn/mucang/android/core/utils/g0;->a:I

    .line 3
    iput-object p2, p0, Lcn/mucang/android/core/utils/g0;->b:Lcn/mucang/android/core/utils/e0;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/core/utils/g0;->a:I

    return v0
.end method

.method public final b()Lcn/mucang/android/core/utils/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/utils/g0;->b:Lcn/mucang/android/core/utils/e0;

    return-object v0
.end method
