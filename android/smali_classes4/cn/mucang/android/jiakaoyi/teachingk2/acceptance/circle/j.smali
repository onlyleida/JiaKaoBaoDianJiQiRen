.class public final Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/BrakeDialogShowEvent;",
        "",
        "reason",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;",
        "time",
        "",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;J)V",
        "getReason",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;",
        "getTime",
        "()J",
        "teachbase_release"
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
.field private final a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

.field private final b:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;J)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/j;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/j;->b:J

    return-void
.end method


# virtual methods
.method public final a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/j;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    return-object v0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/j;->b:J

    return-wide v0
.end method
