.class final Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$DebugModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DebugModel"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u000b\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$DebugModel;",
        "Ljava/io/Serializable;",
        "(Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;)V",
        "brakeSrc",
        "",
        "getBrakeSrc",
        "()Ljava/lang/String;",
        "setBrakeSrc",
        "(Ljava/lang/String;)V",
        "deltaTime",
        "",
        "getDeltaTime",
        "()J",
        "setDeltaTime",
        "(J)V",
        "timeStamp",
        "getTimeStamp",
        "setTimeStamp",
        "value",
        "getValue",
        "setValue",
        "uilib_release"
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
.field private brakeSrc:Ljava/lang/String;

.field private deltaTime:J

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;

.field private timeStamp:J

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$DebugModel;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$DebugModel;->value:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$DebugModel;->brakeSrc:Ljava/lang/String;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$DebugModel;->timeStamp:J

    return-void
.end method


# virtual methods
.method public final getBrakeSrc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$DebugModel;->brakeSrc:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeltaTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$DebugModel;->deltaTime:J

    return-wide v0
.end method

.method public final getTimeStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$DebugModel;->timeStamp:J

    return-wide v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$DebugModel;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final setBrakeSrc(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$DebugModel;->brakeSrc:Ljava/lang/String;

    return-void
.end method

.method public final setDeltaTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$DebugModel;->deltaTime:J

    return-void
.end method

.method public final setTimeStamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$DebugModel;->timeStamp:J

    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/BrakeStateDebugActivity$DebugModel;->value:Ljava/lang/String;

    return-void
.end method
