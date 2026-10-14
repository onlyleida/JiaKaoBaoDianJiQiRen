.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/record/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/record/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;

    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/record/a;->b:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/record/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/record/a;->b:F

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecorder$uploadTrain$1;->a(Lcn/mucang/android/jiakaoyi/teachingk2/record/UserRecordModel;F)V

    return-void
.end method
