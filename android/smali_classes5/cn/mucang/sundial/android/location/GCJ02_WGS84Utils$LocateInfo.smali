.class public Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocateInfo"
.end annotation


# instance fields
.field public china:Z

.field public latitude:D

.field public longitude:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;->china:Z

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;->latitude:D

    .line 4
    iput-wide v0, p0, Lcn/mucang/sundial/android/location/GCJ02_WGS84Utils$LocateInfo;->longitude:D

    return-void
.end method
