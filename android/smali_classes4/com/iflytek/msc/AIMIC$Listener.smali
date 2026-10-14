.class public interface abstract Lcom/iflytek/msc/AIMIC$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/msc/AIMIC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onRecogAudio([BIILjava/lang/Object;)V
.end method

.method public abstract onWakeupAudio([BIILjava/lang/Object;)V
.end method

.method public abstract onWakeupMsg(III[BI[BI[BI)V
.end method
