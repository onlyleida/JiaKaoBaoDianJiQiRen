.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/model/BaseOperatorModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000c\"\u0004\u0008\u0014\u0010\u000e\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/model/BaseOperatorModel;",
        "Ljava/io/Serializable;",
        "()V",
        "background",
        "",
        "getBackground",
        "()Ljava/lang/String;",
        "setBackground",
        "(Ljava/lang/String;)V",
        "programId",
        "",
        "getProgramId",
        "()I",
        "setProgramId",
        "(I)V",
        "programName",
        "getProgramName",
        "setProgramName",
        "status",
        "getStatus",
        "setStatus",
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
.field private background:Ljava/lang/String;

.field private programId:I

.field private programName:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBackground()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/model/BaseOperatorModel;->background:Ljava/lang/String;

    return-object v0
.end method

.method public final getProgramId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/model/BaseOperatorModel;->programId:I

    return v0
.end method

.method public final getProgramName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/model/BaseOperatorModel;->programName:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/model/BaseOperatorModel;->status:I

    return v0
.end method

.method public final setBackground(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/model/BaseOperatorModel;->background:Ljava/lang/String;

    return-void
.end method

.method public final setProgramId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/model/BaseOperatorModel;->programId:I

    return-void
.end method

.method public final setProgramName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/model/BaseOperatorModel;->programName:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/model/BaseOperatorModel;->status:I

    return-void
.end method
