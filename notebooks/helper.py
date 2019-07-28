import matplotlib.pyplot as plt
import numpy as np

def plot_surface(clf,X,y,h=.02):
    fig = plt.figure(figsize=[6,6])
    x_min, x_max = X[:, 0].min() - .5, X[:, 0].max() + .5
    y_min, y_max = X[:, 1].min() - .5, X[:, 1].max() + .5
    xx, yy = np.meshgrid(np.arange(x_min, x_max, h),
    np.arange(y_min, y_max, h))
    Z = clf.predict_proba(np.c_[xx.ravel(), yy.ravel()])[:, 0]
    # Put the result into a color plot
    Z = Z.reshape(xx.shape)
    plt.contourf(xx, yy, Z,cmap='RdGy',alpha=.5)
    plt.scatter(X[:, 0], X[:, 1], c=y, s=2, cmap='RdGy')
