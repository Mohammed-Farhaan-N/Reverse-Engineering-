.class public final synthetic Lcom/emanuelef/remote_capture/CaptureHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/emanuelef/remote_capture/CaptureHelper;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/emanuelef/remote_capture/CaptureHelper;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/emanuelef/remote_capture/CaptureHelper$$ExternalSyntheticLambda1;->f$0:Lcom/emanuelef/remote_capture/CaptureHelper;

    iput-object p2, p0, Lcom/emanuelef/remote_capture/CaptureHelper$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/emanuelef/remote_capture/CaptureHelper$$ExternalSyntheticLambda1;->f$0:Lcom/emanuelef/remote_capture/CaptureHelper;

    iget-object v1, p0, Lcom/emanuelef/remote_capture/CaptureHelper$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, v1, p1, p2}, Lcom/emanuelef/remote_capture/CaptureHelper;->lambda$startCapture$2$com-emanuelef-remote_capture-CaptureHelper(Landroid/content/Intent;Landroid/content/DialogInterface;I)V

    return-void
.end method
