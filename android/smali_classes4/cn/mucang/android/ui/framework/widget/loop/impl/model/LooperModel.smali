.class public Lcn/mucang/android/ui/framework/widget/loop/impl/model/LooperModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/ui/framework/mvp/BaseModel;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private imageResId:I

.field private imageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcn/mucang/android/ui/framework/widget/loop/impl/model/LooperModel;->imageResId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/ui/framework/widget/loop/impl/model/LooperModel;->imageUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImageResId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/ui/framework/widget/loop/impl/model/LooperModel;->imageResId:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/loop/impl/model/LooperModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setImageResId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/ui/framework/widget/loop/impl/model/LooperModel;->imageResId:I

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/framework/widget/loop/impl/model/LooperModel;->imageUrl:Ljava/lang/String;

    return-void
.end method
