.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UserErrorModel$UserErrorItemModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UserErrorModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserErrorItemModel"
.end annotation


# instance fields
.field public count:I

.field public deductCode:I

.field public deductDesc:Ljava/lang/String;

.field public step:I

.field public stepName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UserErrorModel$UserErrorItemModel;->count:I

    return-void
.end method
