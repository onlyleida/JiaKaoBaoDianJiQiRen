.class public final Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;",
        "Ljava/io/Serializable;",
        "()V",
        "commandFailTip",
        "",
        "getCommandFailTip",
        "()Ljava/lang/String;",
        "setCommandFailTip",
        "(Ljava/lang/String;)V",
        "commandId",
        "",
        "getCommandId",
        "()J",
        "setCommandId",
        "(J)V",
        "recordId",
        "getRecordId",
        "setRecordId",
        "reply",
        "getReply",
        "setReply",
        "tip",
        "getTip",
        "setTip",
        "type",
        "",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "speech_release"
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
.field private commandFailTip:Ljava/lang/String;

.field private commandId:J

.field private recordId:J

.field private reply:Ljava/lang/String;

.field private tip:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCommandFailTip()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;->commandFailTip:Ljava/lang/String;

    return-object v0
.end method

.method public final getCommandId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;->commandId:J

    return-wide v0
.end method

.method public final getRecordId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;->recordId:J

    return-wide v0
.end method

.method public final getReply()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;->reply:Ljava/lang/String;

    return-object v0
.end method

.method public final getTip()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;->tip:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;->type:I

    return v0
.end method

.method public final setCommandFailTip(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;->commandFailTip:Ljava/lang/String;

    return-void
.end method

.method public final setCommandId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;->commandId:J

    return-void
.end method

.method public final setRecordId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;->recordId:J

    return-void
.end method

.method public final setReply(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;->reply:Ljava/lang/String;

    return-void
.end method

.method public final setTip(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;->tip:Ljava/lang/String;

    return-void
.end method

.method public final setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;->type:I

    return-void
.end method
