.class public Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/utils/PhoneInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneInfo"
.end annotation


# instance fields
.field private colorDepth:I

.field private hardwareConcurrency:I

.field private language:Ljava/lang/String;

.field private pixelDepth:I

.field private pixelRatio:F

.field private platform:Ljava/lang/String;

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColorDepth()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;->colorDepth:I

    return v0
.end method

.method public getHardwareConcurrency()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;->hardwareConcurrency:I

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getPixelDepth()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;->pixelDepth:I

    return v0
.end method

.method public getPixelRatio()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;->pixelRatio:F

    return v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;->screenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;->screenWidth:I

    return v0
.end method

.method public setColorDepth(I)Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;->colorDepth:I

    return-object p0
.end method

.method public setHardwareConcurrency(I)Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;->hardwareConcurrency:I

    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;->language:Ljava/lang/String;

    return-object p0
.end method

.method public setPixelDepth(I)Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;->pixelDepth:I

    return-object p0
.end method

.method public setPixelRatio(F)Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;->pixelRatio:F

    return-object p0
.end method

.method public setPlatform(Ljava/lang/String;)Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;->platform:Ljava/lang/String;

    return-object p0
.end method

.method public setScreenHeight(I)Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;->screenHeight:I

    return-object p0
.end method

.method public setScreenWidth(I)Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/core/utils/PhoneInfoUtils$PhoneInfo;->screenWidth:I

    return-object p0
.end method
