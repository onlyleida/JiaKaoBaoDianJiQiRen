.class public final Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0001X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/CheckStatusModel;",
        "",
        "status",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;)V",
        "duration",
        "",
        "getDuration",
        "()I",
        "setDuration",
        "(I)V",
        "extra",
        "getExtra",
        "()Ljava/lang/Object;",
        "setExtra",
        "(Ljava/lang/Object;)V",
        "playEndTime",
        "",
        "getPlayEndTime",
        "()J",
        "setPlayEndTime",
        "(J)V",
        "getStatus",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;",
        "voice",
        "",
        "getVoice",
        "()Ljava/lang/String;",
        "setVoice",
        "(Ljava/lang/String;)V",
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
.field private final a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Object;

.field private d:I

.field private e:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->d:I

    return v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->e:J

    return-wide v0
.end method

.method public final d()Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final f(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->d:I

    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public final h(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->e:J

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->b:Ljava/lang/String;

    return-void
.end method
