.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;
.super Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;
.source "SourceFile"


# instance fields
.field public code:I

.field public desc:Ljava/lang/String;

.field public score:I

.field public step:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;->desc:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;->desc:Ljava/lang/String;

    .line 3
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;->code:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;->code:I

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;->step:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;->step:Ljava/lang/String;

    .line 5
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;->score:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;->score:I

    .line 6
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;->time:J

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/exam/UnityExamDeductModel;->time:J

    return-object v0
.end method
