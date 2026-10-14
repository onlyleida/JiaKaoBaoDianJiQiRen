.class public abstract Lcn/mucang/android/core/task/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\u00080\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u00020\u0002B\u0017\u0008\u0004\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0006R\u0016\u0010\u0005\u001a\u00028\u0000X\u0084\u0004\u00a2\u0006\n\n\u0002\u0010\t\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0003\u001a\u00020\u0004X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u0082\u0001\u0001\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcn/mucang/android/core/task/TaskAction;",
        "T",
        "Ljava/lang/Runnable;",
        "taskId",
        "",
        "subTask",
        "(JLjava/lang/Object;)V",
        "getSubTask",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "getTaskId",
        "()J",
        "Lcn/mucang/android/core/task/DownloadAction;",
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
.field private final a:J

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(JLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcn/mucang/android/core/task/f;->a:J

    iput-object p3, p0, Lcn/mucang/android/core/task/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/Object;Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/core/task/f;-><init>(JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/task/f;->b:Ljava/lang/Object;

    return-object v0
.end method

.method protected final b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/core/task/f;->a:J

    return-wide v0
.end method
