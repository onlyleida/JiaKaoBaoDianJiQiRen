.class public final Lcn/mucang/jiakaoyi/sundial/client/model/LeaningTime;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/sundial/client/model/LeaningTime;",
        "",
        "isLearning",
        "",
        "time",
        "",
        "(ZJ)V",
        "()Z",
        "getTime",
        "()J",
        "sundial_release"
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
.field private final isLearning:Z

.field private final time:J


# direct methods
.method public constructor <init>(ZJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/sundial/client/model/LeaningTime;->isLearning:Z

    .line 3
    iput-wide p2, p0, Lcn/mucang/jiakaoyi/sundial/client/model/LeaningTime;->time:J

    return-void
.end method


# virtual methods
.method public final getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/sundial/client/model/LeaningTime;->time:J

    return-wide v0
.end method

.method public final isLearning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/sundial/client/model/LeaningTime;->isLearning:Z

    return v0
.end method
