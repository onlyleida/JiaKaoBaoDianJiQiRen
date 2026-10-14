.class public Lcn/mucang/android/selectcity/Area;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/mucang/android/selectcity/Area;",
            ">;"
        }
    .end annotation
.end field

.field public static final WHOLE_COUNTRY:Lcn/mucang/android/selectcity/Area;


# instance fields
.field private areaCode:Ljava/lang/String;

.field private areaName:Ljava/lang/String;

.field private disableDelete:Z

.field private disableDeleteReason:Ljava/lang/String;

.field private firstLetter:Ljava/lang/String;

.field private fullAreaName:Ljava/lang/String;

.field private isAdministeredCounty:Z

.field private isMunicipality:Z

.field private parentCode:Ljava/lang/String;

.field private pinyin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v8, Lcn/mucang/android/selectcity/Area;

    const-string v1, "000000"

    const-string v2, "\u5168\u56fd"

    const-string v3, "quanguo"

    const/4 v4, 0x1

    const-string v5, "*"

    const-string v6, "000000"

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/selectcity/Area;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    sput-object v8, Lcn/mucang/android/selectcity/Area;->WHOLE_COUNTRY:Lcn/mucang/android/selectcity/Area;

    .line 2
    new-instance v0, Lcn/mucang/android/selectcity/Area$a;

    invoke-direct {v0}, Lcn/mucang/android/selectcity/Area$a;-><init>()V

    sput-object v0, Lcn/mucang/android/selectcity/Area;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "110000"

    .line 3
    iput-object v0, p0, Lcn/mucang/android/selectcity/Area;->areaCode:Ljava/lang/String;

    const-string v0, "\u5317\u4eac\u5e02"

    .line 4
    iput-object v0, p0, Lcn/mucang/android/selectcity/Area;->areaName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/selectcity/Area;->areaCode:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/selectcity/Area;->areaName:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/selectcity/Area;->pinyin:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcn/mucang/android/selectcity/Area;->isMunicipality:Z

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/selectcity/Area;->firstLetter:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/selectcity/Area;->parentCode:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcn/mucang/android/selectcity/Area;->isAdministeredCounty:Z

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcn/mucang/android/selectcity/Area;->disableDelete:Z

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/selectcity/Area;->disableDeleteReason:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/selectcity/Area;->fullAreaName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/mucang/android/selectcity/Area$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/selectcity/Area;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcn/mucang/android/selectcity/Area;->areaCode:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcn/mucang/android/selectcity/Area;->areaName:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcn/mucang/android/selectcity/Area;->fullAreaName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move-object v8, p2

    .line 9
    invoke-direct/range {v0 .. v8}, Lcn/mucang/android/selectcity/Area;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcn/mucang/android/selectcity/Area;->areaCode:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcn/mucang/android/selectcity/Area;->areaName:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcn/mucang/android/selectcity/Area;->pinyin:Ljava/lang/String;

    .line 14
    iput-boolean p4, p0, Lcn/mucang/android/selectcity/Area;->isMunicipality:Z

    .line 15
    iput-object p5, p0, Lcn/mucang/android/selectcity/Area;->firstLetter:Ljava/lang/String;

    .line 16
    iput-object p6, p0, Lcn/mucang/android/selectcity/Area;->parentCode:Ljava/lang/String;

    .line 17
    iput-boolean p7, p0, Lcn/mucang/android/selectcity/Area;->isAdministeredCounty:Z

    .line 18
    iput-object p8, p0, Lcn/mucang/android/selectcity/Area;->fullAreaName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcn/mucang/android/selectcity/Area;

    .line 3
    iget-object v0, p0, Lcn/mucang/android/selectcity/Area;->areaCode:Ljava/lang/String;

    iget-object p1, p1, Lcn/mucang/android/selectcity/Area;->areaCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/Area;->areaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/Area;->areaName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisableDeleteReason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/Area;->disableDeleteReason:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstLetter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/Area;->firstLetter:Ljava/lang/String;

    return-object v0
.end method

.method public getFullAreaName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/Area;->fullAreaName:Ljava/lang/String;

    return-object v0
.end method

.method public getParentCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/Area;->parentCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyin()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/Area;->pinyin:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/Area;->areaCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAdministeredCounty()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/selectcity/Area;->isAdministeredCounty:Z

    return v0
.end method

.method public isDisableDelete()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/selectcity/Area;->disableDelete:Z

    return v0
.end method

.method public isMunicipality()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/selectcity/Area;->isMunicipality:Z

    return v0
.end method

.method public setAreaCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/selectcity/Area;->areaCode:Ljava/lang/String;

    return-void
.end method

.method public setAreaName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/selectcity/Area;->areaName:Ljava/lang/String;

    return-void
.end method

.method public setDisableDelete(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/selectcity/Area;->disableDelete:Z

    return-void
.end method

.method public setDisableDeleteReason(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/selectcity/Area;->disableDeleteReason:Ljava/lang/String;

    return-void
.end method

.method public setFirstLetter(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/selectcity/Area;->firstLetter:Ljava/lang/String;

    return-void
.end method

.method public setFullAreaName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/selectcity/Area;->fullAreaName:Ljava/lang/String;

    return-void
.end method

.method public setIsAdministeredCounty(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/selectcity/Area;->isAdministeredCounty:Z

    return-void
.end method

.method public setIsMunicipality(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/selectcity/Area;->isMunicipality:Z

    return-void
.end method

.method public setParentCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/selectcity/Area;->parentCode:Ljava/lang/String;

    return-void
.end method

.method public setPinyin(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/selectcity/Area;->pinyin:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcn/mucang/android/selectcity/Area;->areaCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcn/mucang/android/selectcity/Area;->areaName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcn/mucang/android/selectcity/Area;->pinyin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-boolean p2, p0, Lcn/mucang/android/selectcity/Area;->isMunicipality:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 5
    iget-object p2, p0, Lcn/mucang/android/selectcity/Area;->firstLetter:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcn/mucang/android/selectcity/Area;->parentCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-boolean p2, p0, Lcn/mucang/android/selectcity/Area;->isAdministeredCounty:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 8
    iget-boolean p2, p0, Lcn/mucang/android/selectcity/Area;->disableDelete:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 9
    iget-object p2, p0, Lcn/mucang/android/selectcity/Area;->disableDeleteReason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcn/mucang/android/selectcity/Area;->fullAreaName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
