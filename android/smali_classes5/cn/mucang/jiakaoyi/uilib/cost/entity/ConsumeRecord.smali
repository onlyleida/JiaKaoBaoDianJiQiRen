.class public Lcn/mucang/jiakaoyi/uilib/cost/entity/ConsumeRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final End:Ljava/lang/String; = "FINISH"

.field public static final Examing:Ljava/lang/String; = "DOING"

.field public static final Start:Ljava/lang/String; = "START"


# instance fields
.field public balance:Ljava/lang/String;

.field public consumeId:Ljava/lang/String;

.field public remainingSeconds:J

.field public stopAfterSeconds:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
