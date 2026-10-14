.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TeachMediaModel;
.super Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;
.source "SourceFile"


# static fields
.field public static final TYPE_IMG:I = 0x0

.field public static final TYPE_VIDEO:I = 0x1


# instance fields
.field public fileName:Ljava/lang/String;

.field public tip:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/train/TeachMediaModel;->tip:Ljava/lang/String;

    return-void
.end method
