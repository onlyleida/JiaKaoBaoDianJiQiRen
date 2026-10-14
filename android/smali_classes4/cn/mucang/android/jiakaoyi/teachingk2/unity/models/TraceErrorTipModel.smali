.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TraceErrorTipModel;
.super Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;
.source "SourceFile"


# instance fields
.field public open:Z

.field public wheelType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;-><init>()V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TraceErrorTipModel;->open:Z

    .line 4
    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TraceErrorTipModel;->wheelType:I

    return-void
.end method
