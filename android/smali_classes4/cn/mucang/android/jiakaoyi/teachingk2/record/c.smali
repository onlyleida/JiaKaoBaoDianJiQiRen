.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/record/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;


# direct methods
.method public synthetic constructor <init>(ILcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/record/c;->a:I

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/record/c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/record/c;->a:I

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/record/c;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecorder;->k(ILcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityRecordModel;)V

    return-void
.end method
