.class final Lj$/util/stream/SortedOps$OfDouble;
.super Lj$/util/stream/DoublePipeline$StatefulOp;
.source "SourceFile"


# direct methods
.method constructor <init>(Lj$/util/stream/AbstractPipeline;)V
    .locals 2

    sget v0, Lj$/util/stream/StreamOpFlag;->IS_ORDERED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->IS_SORTED:I

    or-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lj$/util/stream/DoublePipeline$StatefulOp;-><init>(Lj$/util/stream/AbstractPipeline;I)V

    return-void
.end method


# virtual methods
.method public final opEvaluateParallel(Lj$/util/Spliterator;Lj$/util/function/IntFunction;Lj$/util/stream/AbstractPipeline;)Lj$/util/stream/Node;
    .locals 2

    sget-object v0, Lj$/util/stream/StreamOpFlag;->SORTED:Lj$/util/stream/StreamOpFlag;

    invoke-virtual {p3}, Lj$/util/stream/AbstractPipeline;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, p2}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/Spliterator;ZLj$/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p3, p1, v0, p2}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/Spliterator;ZLj$/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object p1

    check-cast p1, Lj$/util/stream/Node$OfDouble;

    invoke-interface {p1}, Lj$/util/stream/Node$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    invoke-static {p1}, Ljava/util/Arrays;->sort([D)V

    .line 0
    new-instance p2, Lj$/util/stream/Nodes$DoubleArrayNode;

    invoke-direct {p2, p1}, Lj$/util/stream/Nodes$DoubleArrayNode;-><init>([D)V

    return-object p2
.end method

.method public final opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
    .locals 1

    .line 0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 0
    sget-object v0, Lj$/util/stream/StreamOpFlag;->SORTED:Lj$/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Lj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    sget-object v0, Lj$/util/stream/StreamOpFlag;->SIZED:Lj$/util/stream/StreamOpFlag;

    invoke-virtual {v0, p1}, Lj$/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lj$/util/stream/SortedOps$SizedDoubleSortingSink;

    invoke-direct {p1, p2}, Lj$/util/stream/SortedOps$SizedDoubleSortingSink;-><init>(Lj$/util/stream/Sink;)V

    return-object p1

    :cond_1
    new-instance p1, Lj$/util/stream/SortedOps$DoubleSortingSink;

    invoke-direct {p1, p2}, Lj$/util/stream/SortedOps$DoubleSortingSink;-><init>(Lj$/util/stream/Sink;)V

    return-object p1
.end method
