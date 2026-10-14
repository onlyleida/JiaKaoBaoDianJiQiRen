.class public Lcn/mucang/android/selectcity/CityNameCodeMapping$MucangPOI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/ui/framework/mvp/BaseModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/selectcity/CityNameCodeMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MucangPOI"
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field public latitude:Ljava/lang/String;

.field public longitude:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/mucang/android/selectcity/CityNameCodeMapping$MucangPOI;->name:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcn/mucang/android/selectcity/CityNameCodeMapping$MucangPOI;->code:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcn/mucang/android/selectcity/CityNameCodeMapping$MucangPOI;->latitude:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcn/mucang/android/selectcity/CityNameCodeMapping$MucangPOI;->longitude:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/CityNameCodeMapping$MucangPOI;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/CityNameCodeMapping$MucangPOI;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/CityNameCodeMapping$MucangPOI;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/selectcity/CityNameCodeMapping$MucangPOI;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/selectcity/CityNameCodeMapping$MucangPOI;->code:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/selectcity/CityNameCodeMapping$MucangPOI;->latitude:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/selectcity/CityNameCodeMapping$MucangPOI;->longitude:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/selectcity/CityNameCodeMapping$MucangPOI;->name:Ljava/lang/String;

    return-void
.end method
