.class public Lcn/mucang/android/jiakaoyi/signal/communicate/GearsData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/communicate/GearsData$Gear;
    }
.end annotation


# instance fields
.field private gearCategory:Ljava/lang/String;

.field private gearsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/GearsData$Gear;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/GearsData;->gearCategory:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/GearsData;->gearsList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getGearCategory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/GearsData;->gearCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getGearsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/GearsData$Gear;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/GearsData;->gearsList:Ljava/util/List;

    return-object v0
.end method

.method public setGearCategory(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/GearsData;->gearCategory:Ljava/lang/String;

    return-void
.end method

.method public setGearsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/GearsData$Gear;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/GearsData;->gearsList:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
