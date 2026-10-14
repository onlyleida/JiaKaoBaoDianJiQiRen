.class public interface abstract Lcom/iflytek/speech/LexiconListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/speech/LexiconListener$Stub;,
        Lcom/iflytek/speech/LexiconListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onLexiconUpdated(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
