.class public interface abstract Lcom/iflytek/speech/GrammarListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/speech/GrammarListener$Stub;,
        Lcom/iflytek/speech/GrammarListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onBuildFinish(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
